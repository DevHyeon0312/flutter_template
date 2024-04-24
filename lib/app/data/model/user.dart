class User {
  final String? uid;
  final String? email;
  final String? displayName;
  final String? photoURL;

  User({
    this.uid,
    this.email,
    this.displayName,
    this.photoURL,
  });

  @override
  String toString() {
    return 'User{uid: $uid, email: $email, displayName: $displayName, photoURL: $photoURL}';
  }
}
