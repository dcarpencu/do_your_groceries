import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:redux/redux.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({required this.model, required this.prompt, super.key});

  final GenerativeModel model;
  final String prompt;

  @override
  RecipeScreenState createState() => RecipeScreenState();
}

class RecipeScreenState extends State<RecipeScreen> {
  late Store<AppState> _store;
  late Stream<String?> recipeStream;
  final StringBuffer _fullText = StringBuffer();

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    recipeStream = generateRecipeResponse(widget.model, widget.prompt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(48),
              ),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: SliverAppBarProducts(
                      _store.state.selectedGroceryList!.selectedIcon,
                      'Generator \nde rețete',
                    ),
                    pinned: true,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(childCount: 1, (BuildContext context, int index) {
                      return StreamBuilder<String?>(
                        stream: recipeStream,
                        builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return const Center(child: CircularProgressIndicator());
                          } else if (snapshot.hasError) {
                            return Center(child: Text('Error: ${snapshot.error}'));
                          } else if (snapshot.hasData) {
                            if (_fullText.isNotEmpty &&
                                _shouldConcatenateWithoutSpace(_fullText.toString(), snapshot.data!)) {
                              _fullText.write(snapshot.data);
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
                            return const Center(child: Text('Conexiunea a fost întreruptă'));
                          }
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context
                  ..pop()
                  ..pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // Increased the border radius for a more modern look
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 14, // Slightly increased padding for better touch target
                  horizontal: 32, // Slightly increased padding for better touch target
                ),
                elevation: 4,
                // Added elevation for a sense of depth
                shadowColor: Colors.lightBlueAccent.withOpacity(0.5), // Subtle shadow for better depth perception
              ),
              child: const Text(
                'Înapoi la lista de cumpărături',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold, // Made the font bold for better readability
                  color: Colors.white,
                  letterSpacing: 0.5, // Slight letter spacing for a cleaner look
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  bool _shouldConcatenateWithoutSpace(String previous, String next) {
    final String lastChar = previous.isNotEmpty ? previous[previous.length - 1] : '';
    final String firstChar = next.isNotEmpty ? next[0] : '';
    return _isAlphanumeric(lastChar) && _isAlphanumeric(firstChar);
  }

  bool _isAlphanumeric(String char) {
    return RegExp(r'^[a-zA-Z0-9]$').hasMatch(char);
  }

  Widget _buildStyledText(String text) {
    final List<TextSpan> spans = <TextSpan>[];
    final RegExp regex = RegExp(r'\*\*(.*?)\*\*|##(.*?)##|([^*#]+)');
    final Iterable<RegExpMatch> matches = regex.allMatches(text);

    for (final RegExpMatch match in matches) {
      if (match.group(1) != null) {
        spans.add(
          TextSpan(
            text: match.group(1),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      } else if (match.group(2) != null) {
        spans.add(
          TextSpan(
            text: match.group(2),
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        );
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
      if (kDebugMode) {
        print(chunk.text);
      }
      yield chunk.text;
    }
  }
}
