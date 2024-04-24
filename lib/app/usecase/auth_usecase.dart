import 'package:flutter_template/app/data/model/user.dart';
import 'package:flutter_template/network/firebase/firebase_repository_module.dart';
import 'package:flutter_template/network/firebase/repository/firebase_auth_repository.dart';
import 'package:flutter_template/network/google/google_repository_module.dart';
import 'package:flutter_template/network/google/repository/google_oauth_repository.dart';
import 'package:flutter_template/util/debug_log.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthUseCase {
  final FireBaseAuthRepository _firebaseAuthRepository;
  final GoogleOauthRepository _googleOauthRepository;

  static final AuthUseCase _instance = AuthUseCase._privateConstructor(
    FireBaseModule().getFireBaseAuthRepository(),
    GoogleRepositoryModule().getGoogleOauthRepository(),
  );

  AuthUseCase._privateConstructor(
      this._firebaseAuthRepository, this._googleOauthRepository);

  factory AuthUseCase() {
    return _instance;
  }

  Future<void> signOut() async {
    await Future.wait([
      _firebaseAuthRepository.signOut(),
      _googleOauthRepository.signOut(),
    ]).onError((error, stackTrace) {
      throw Exception(error);
    });
  }

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleOauthRepository
        .signInWithGoogle()
        .onError((error, stackTrace) {
      DebugLog.e(
        'signInWithGoogle completed with error',
        error: error,
        stackTrace: stackTrace,
      );
      throw Exception(error);
    });
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication.onError((error, stackTrace) {
      DebugLog.e(
        'signInWithGoogle completed with error',
        error: error,
        stackTrace: stackTrace,
      );
      throw Exception(error);
    });

    final credential = _firebaseAuthRepository.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    User? user;
    await _firebaseAuthRepository.signInWithGoogle(credential).then((value) {
      user = User(
        uid: value.user?.uid,
        email: value.user?.email,
        displayName: value.user?.displayName,
        photoURL: value.user?.photoURL,
      );
    }).onError((error, stackTrace) {
      DebugLog.e(
        'signInWithGoogle completed with error',
        error: error,
        stackTrace: stackTrace,
      );
      Exception(error);
    });
    return user;
  }
}
