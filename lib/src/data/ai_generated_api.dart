import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class AiGeneratedApi {
  AiGeneratedApi(this._firestore);

  final FirebaseFirestore _firestore;
  Stream<String?> generateRecipeResponse(GenerativeModel model, String prompt) async* {
    final DocumentReference<Map<String, dynamic>> ref = _firestore.collection('recipes').doc();

    final List<Content> content = <Content>[Content.text(prompt)];
    final Stream<GenerateContentResponse> response = model.generateContentStream(content);

    await for (final GenerateContentResponse chunk in response) {
      await ref.set(chunk.text! as Map<String, dynamic>);
      yield chunk.text;
    }
  }
}
