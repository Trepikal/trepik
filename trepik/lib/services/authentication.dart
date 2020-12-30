import 'package:firebase_auth/firebase_auth.dart';
import 'package:trepik/models/user.dart';

class AuthenticationService {
  // underscore denotes private; seems like a silly convention to me, but ok
  final FirebaseAuth _authentication = FirebaseAuth.instance;

  // convert to Trepik user class;
  // dunno totally about this b/c signup timestamp and last auth timestamp could both be remarkably useful in our application flow. 
  // also, is the idea here that we wind up loading more data later on? Latency gonna be a problem? 
  TrepikUser _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? TrepikUser(uid: user.uid) : null;
  }

  // auth change stream w/Trepik User as a return 
  Stream<TrepikUser> get user {
    return _authentication
      .onAuthStateChanged
      .map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _authentication.signInAnonymously();
      FirebaseUser user = result.user;
      TrepikUser trepikUser = _userFromFirebaseUser(user);
      return trepikUser;
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
