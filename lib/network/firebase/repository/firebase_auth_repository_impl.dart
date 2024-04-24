import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/network/firebase/repository/firebase_auth_repository.dart';

class FireBaseAuthRepositoryImpl extends FireBaseAuthRepository {
  final FirebaseAuth firebaseAuth;

  FireBaseAuthRepositoryImpl({required this.firebaseAuth});

  @override
  Future<UserCredential> signInWithGoogle(AuthCredential credential) async {
    return firebaseAuth.signInWithCredential(credential);
  }

  //return last reload success time
  @override
  Future<DateTime?> reload() async {
    if (firebaseAuth.currentUser != null) {
      var reloadResult = await firebaseAuth.currentUser?.reload().then((value) {
        return DateTime.now();
      });
      return reloadResult;
    } else {
      return null;
    }
  }

  @override
  Future<void> signOut() {
    return firebaseAuth.signOut();
  }

  @override
  OAuthCredential credential(
      {required String? accessToken, required String? idToken}) {
    return GoogleAuthProvider.credential(
      accessToken: accessToken,
      idToken: idToken,
    );
  }
}
