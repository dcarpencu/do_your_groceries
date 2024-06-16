import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class AiGeneratedApi {
  AiGeneratedApi(this._firestore);

  final FirebaseFirestore _firestore;
  Stream<void> generateRecipeResponse(GenerativeModel model, String prompt) async* {

    final List<Content> content = <Content>[Content.text(prompt)];
    final Stream<GenerateContentResponse> response = model.generateContentStream(content);

    await for (final GenerateContentResponse chunk in response) {
      print(chunk.text);
      yield chunk.text;
    }
  }
}
