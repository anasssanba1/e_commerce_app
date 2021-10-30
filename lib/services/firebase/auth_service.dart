import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Stream<User?> _authStateStream =
      FirebaseAuth.instance.authStateChanges();
  AuthState authState = AuthState.unknown;
  Future<void> signUp(String userEmail, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: userEmail,
        password: password,
      );
      _authStateStream.listen((user) {
        if (user != null) {
          authState = AuthState.authenticated;
        } else {
          authState = AuthState.unknown;
        }
      });
    } catch (e) {
      print(e);
      authState = AuthState.notAuthenticated;
    }
  }

  Future<void> SignIn(String userEmail, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: password,
        password: password,
      );
    } catch (e) {
      print(e);
    }
  }

  void signOut() async {
    await firebaseAuth.signOut();
    authState = AuthState.unknown;
  }
  Stream<User?> get authStateStream => _authStateStream;
}
