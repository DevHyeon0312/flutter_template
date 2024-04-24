import 'package:flutter_template/network/google/repository/google_oauth_repository.dart';
import 'package:flutter_template/network/google/repository/google_oauth_repository_impl.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleRepositoryModule {
  static final GoogleRepositoryModule _instance =
      GoogleRepositoryModule._privateConstructor();

  GoogleRepositoryModule._privateConstructor();

  factory GoogleRepositoryModule() {
    return _instance;
  }

  GoogleOauthRepository getGoogleOauthRepository() {
    return GoogleOauthRepositoryImpl(
      googleSignIn: GoogleSignIn(),
    );
  }
}
