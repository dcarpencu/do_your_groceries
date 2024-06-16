import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth with Mock implements FirebaseAuth {}

// ignore: avoid_implementing_value_types
class MockFirebaseFireStore with Mock implements FirebaseFirestore {}

// ignore: subtype_of_sealed_class
class MockDocumentReference with Mock implements DocumentReference<Map<String, dynamic>> {}
// ignore: subtype_of_sealed_class
class MockDocumentSnapshot with Mock implements DocumentSnapshot<Map<String, dynamic>> {}

final Map<String, dynamic> userData =
jsonDecode(File('./test/unit/reducer/res/user.json').readAsStringSync()) as Map<String, dynamic>;

Future<void> main() async {

  late FirebaseAuth auth;
  late AuthApi authApi;
  late FirebaseFirestore firestore;
  late MockDocumentReference ref;
  late MockDocumentSnapshot snapshot;

  setUp(() {
    auth = MockFirebaseAuth();
    firestore = MockFirebaseFireStore();
    ref = MockDocumentReference();
    snapshot = MockDocumentSnapshot();
    authApi = AuthApi(auth, firestore);
  });

  test('logOut', () async {
    when(auth.signOut).thenAnswer((_) async {});

    await authApi.logout();

    final VerificationResult result = verify(auth.signOut);
    expect(result.callCount, 1);
  });

  test('getUser', () async {
    when(() => firestore.doc(captureAny())).thenReturn(ref);
    when(() => ref.get()).thenAnswer((_) async => snapshot);
    when(snapshot.data).thenReturn(userData);

    final AppUser? expected = await authApi.getCurrentUser();

    expect(expected, AppUser.fromJson(userData));
  });
}
