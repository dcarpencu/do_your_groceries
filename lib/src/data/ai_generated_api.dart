import 'package:google_generative_ai/google_generative_ai.dart';

class AiGeneratedApi {
  AiGeneratedApi();

  Stream<void> generateRecipeResponse(GenerativeModel model, String prompt) async* {
    final List<Content> content = <Content>[Content.text(prompt)];
    final Stream<GenerateContentResponse> response = model.generateContentStream(content);

    await for (final GenerateContentResponse chunk in response) {
      yield chunk.text;
    }
  }
}
