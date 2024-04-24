import 'package:flutter_template/network/google/repository/google_oauth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleOauthRepositoryImpl extends GoogleOauthRepository {
  final GoogleSignIn googleSignIn;

  GoogleOauthRepositoryImpl({required this.googleSignIn});

  @override
  Future<GoogleSignInAccount?> signOut() {
    return googleSignIn.signOut();
  }

  @override
  Future<GoogleSignInAccount?> disconnect() {
    return googleSignIn.disconnect();
  }

  @override
  String? getUserEmail() {
    return googleSignIn.currentUser?.email;
  }

  @override
  String? getUserId() {
    return googleSignIn.currentUser?.id;
  }

  @override
  String? getUserName() {
    return googleSignIn.currentUser?.displayName;
  }

  @override
  String? getUserPhotoUrl() {
    return googleSignIn.currentUser?.photoUrl;
  }

  @override
  Future<bool> isSignedIn() {
    return googleSignIn.isSignedIn();
  }

  @override
  Future<GoogleSignInAccount?> signInWithGoogle() {
    return googleSignIn.signIn();
  }
}
