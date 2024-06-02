import 'package:google_generative_ai/google_generative_ai.dart';

class AiGeneratedApi {
  Future<String?> generateRecipeResponse(GenerativeModel model, String prompt) async {
    final List<Content> content = <Content>[Content.text(prompt)];

    final GenerateContentResponse response = await model.generateContent(content);

    return response.text;
  }
}
