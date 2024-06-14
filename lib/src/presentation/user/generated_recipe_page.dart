import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({required this.model, required this.prompt, super.key});

  final GenerativeModel model;
  final String prompt;

  @override
  RecipeScreenState createState() => RecipeScreenState();
}

class RecipeScreenState extends State<RecipeScreen> {
  late Stream<String?> recipeStream;

  @override
  void initState() {
    super.initState();
    recipeStream = generateRecipeResponse(widget.model, widget.prompt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generated Recipe'),
      ),
      body: StreamBuilder<String?>(
        stream: recipeStream,
        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data received'));
          } else {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(snapshot.data!),
            );
          }
        },
      ),
    );
  }

  Stream<String?> generateRecipeResponse(GenerativeModel model, String prompt) async* {
    final List<Content> content = <Content>[Content.text(prompt)];
    final Stream<GenerateContentResponse> response = model.generateContentStream(content);

    await for (final GenerateContentResponse chunk in response) {
      yield chunk.text;
    }
  }
}
