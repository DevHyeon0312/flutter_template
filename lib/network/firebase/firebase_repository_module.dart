import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/network/firebase/repository/firebase_auth_repository.dart';
import 'package:flutter_template/network/firebase/repository/firebase_auth_repository_impl.dart';

class FireBaseModule {
  static final FireBaseModule _instance = FireBaseModule._privateConstructor();

  FireBaseModule._privateConstructor();

  factory FireBaseModule() {
    return _instance;
  }

  FireBaseAuthRepository getFireBaseAuthRepository() {
    return FireBaseAuthRepositoryImpl(
      firebaseAuth: FirebaseAuth.instance,
    );
  }
}
