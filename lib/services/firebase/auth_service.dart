import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/dialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Stream<User?> _authStateStream =
      FirebaseAuth.instance.authStateChanges();
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  AuthState authState = AuthState.unknown;
  String? userId;

  Future<void> signUp(
      String userEmail, String password, BuildContext context) async {
    try {
      final authResult = await firebaseAuth.createUserWithEmailAndPassword(
        email: userEmail,
        password: password,
      );
      if (authResult.user != null) {
        authState = AuthState.authenticated;
        userId = authResult.user!.uid;
      }

      // _setAuthStatus();
    } on FirebaseAuthException catch (error) {
      authState = AuthState.notAuthenticated;
      final String message = _handleSignUpErrors(error);
      Dialogs.showErrorAlert(context, message);
    }
  }

  String _handleSignUpErrors(FirebaseAuthException error) {
    print(error.message);
    print(error.code);
    switch (error.code) {
      case "invalid-credential":
        return "Your email address appears to be malformed.";

      case "weak-password":
        return "Password should be at least 6 characters";

      case "invalid-email":
        return "Your email is invalid pls try again!";
      case "email-already-in-use":
        return "the email is already in use by a different user";
      case "unknown":
        return "An unknown Error happened!";
      default:
        return "An undefined Error happened!";
    }
  }

  Future<void> SignIn(
      String userEmail, String password, BuildContext context) async {
    try {
      final authResult = await firebaseAuth.signInWithEmailAndPassword(
        email: userEmail,
        password: password,
      );
      if (authResult.user != null) {
        authState = AuthState.authenticated;
        userId = authResult.user!.uid;
      }
    } on FirebaseAuthException catch (error) {
      _handleLogInErrors(error, context);
    }
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
    authState = AuthState.unknown;
  }

  Future<void> googleLogin(BuildContext context) async {
    try {
      final user = await googleSignIn.signIn();
      final googleAuth = await user!.authentication;
      final userCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      try {
        final authResult =
            await firebaseAuth.signInWithCredential(userCredential);
        if (authResult.user != null) {
          authState = AuthState.authenticated;
          userId = authResult.user!.uid;
          _user = user;
          print(userId);
        }
      } on FirebaseAuthException catch (error) {
        _handleLogInErrors(error, context);
      }
    } catch (error) {
      print(error);
    }
  }

  void _handleLogInErrors(FirebaseAuthException error, context) {
    print(error.message);
    print(error.code);
    Dialogs.showErrorAlert(context, error.message!);
  }

  GoogleSignInAccount get googleUser => _user!;
  Stream<User?> get authStateStream => _authStateStream;
}
