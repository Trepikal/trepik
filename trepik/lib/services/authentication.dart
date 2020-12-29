import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  // underscore denotes private; seems like a silly convention to me, but ok
  final FirebaseAuth _authentication = FirebaseAuth.instance;

  // anonymous ... IF I HAD IT
  Future signInAnon() async {
    try {
      AuthResult result = await _authentication.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (authenticationError) {
      print(authenticationError.toString());
      return null;
    }
  }

  Future signInEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _authentication.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (authenticationError) {
      print(authenticationError.toString());
      return null;
    }
  }

  // register w/email and password

  // sign out
}
