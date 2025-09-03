import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  AuthRepository(this._auth);

  final FirebaseAuth _auth;

  Future<UserCredential> signInWithEmail(String email, String password) {
    // TODO: implement sign in
    throw UnimplementedError();
  }

  Future<UserCredential> registerWithEmail(String email, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
