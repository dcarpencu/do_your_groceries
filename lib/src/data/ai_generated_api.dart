import 'package:google_generative_ai/google_generative_ai.dart';

class AiGeneratedApi {
  Future<String?> generateRecipeResponse(GenerativeModel model) async {
    const String prompt = 'Imi doresc o reteta culianra care sa contina paine, pui, cartofi dulci si busuioc.';

    final List<Content> content = <Content>[Content.text(prompt)];

    print('\n\n\n CONTENT: $content\n\n');

    final GenerateContentResponse response = await model.generateContent(content);

    print('\n\n\n RESPONSE: $response\n\n');
    print('\n\n\n RESPONSE2: ${response.text}\n\n');

    return response.text;
  }
}
