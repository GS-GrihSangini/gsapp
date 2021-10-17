import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gsidapp/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on firebase user
  UserID? _userFromFirebase(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? UserID(uid: user.uid) : null;
  }

  //auth change user stream

  Stream<UserID?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebase(user!));
    // .map(_userFromFirebase);
  }

  // Sign-In Anonymously

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = _auth.currentUser;
      return _userFromFirebase(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign-In with Email and Password

  //Register with email and password

  //Sign-Out

}
