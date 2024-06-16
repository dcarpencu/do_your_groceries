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
  final StringBuffer _fullText = StringBuffer();

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
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<String?>(
          stream: recipeStream,
          builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              if (_fullText.isNotEmpty && _shouldConcatenateWithoutSpace(_fullText.toString(), snapshot.data!)) {
                _fullText.write(snapshot.data!);
              } else {
                _fullText.write(' ${snapshot.data!}');
              }

              return Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  color: Colors.lightBlue[50],
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: _buildStyledText(_fullText.toString()),
                  ),
                ),
              );
            } else {
              return const Center(child: Text('No data received'));
            }
          },
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  bool _shouldConcatenateWithoutSpace(String previous, String next) {
    final lastChar = previous.isNotEmpty ? previous[previous.length - 1] : '';
    final firstChar = next.isNotEmpty ? next[0] : '';
    return _isAlphanumeric(lastChar) && _isAlphanumeric(firstChar);
  }

  bool _isAlphanumeric(String char) {
    return RegExp(r'^[a-zA-Z0-9]$').hasMatch(char);
  }

  Widget _buildStyledText(String text) {
    final List<TextSpan> spans = [];
    final RegExp regex = RegExp(r'\*\*(.*?)\*\*|##(.*?)##|([^\*#]+)');
    final Iterable<RegExpMatch> matches = regex.allMatches(text);

    for (final match in matches) {
      if (match.group(1) != null) {
        spans.add(TextSpan(
          text: match.group(1),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ));
      } else if (match.group(2) != null) {
        spans.add(TextSpan(
          text: match.group(2),
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ));
      } else {
        spans.add(TextSpan(text: match.group(0)));
      }
    }

    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 18, color: Colors.black87),
        children: spans,
      ),
    );
  }

  Stream<String?> generateRecipeResponse(GenerativeModel model, String prompt) async* {
    final List<Content> content = <Content>[Content.text(prompt)];
    final Stream<GenerateContentResponse> response = model.generateContentStream(content);

    await for (final GenerateContentResponse chunk in response) {
      print(chunk.text);
      yield chunk.text;
    }
  }
}
