import 'package:google_sign_in/google_sign_in.dart';

abstract class GoogleOauthRepository {
  Future<bool> isSignedIn();
  Future<GoogleSignInAccount?> signInWithGoogle();
  Future<GoogleSignInAccount?> signOut();
  Future<GoogleSignInAccount?> disconnect();
  String? getUserEmail();
  String? getUserId();
  String? getUserName();
  String? getUserPhotoUrl();
}
