import 'package:firebase_auth/firebase_auth.dart';

abstract class FireBaseAuthRepository {
  Future<UserCredential> signInWithGoogle(AuthCredential credential);

  Future<void> signOut();

  Future<DateTime?> reload();

  OAuthCredential credential(
      {required String? accessToken, required String? idToken});
}
