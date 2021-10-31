import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/constants/font_sizes.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/shared/app_text.dart';
import 'package:e_commerce/shared/dialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final Stream<User?> _authStateStream =
      FirebaseAuth.instance.authStateChanges();
  AuthState authState = AuthState.unknown;
  Future<void> signUp(
      String userEmail, String password, BuildContext context) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: userEmail,
        password: password,
      );
      _setAuthStatus();
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
      case "invalid_credential":
        return "Your email address appears to be malformed.";

      case "weak_password":
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
      await firebaseAuth.signInWithEmailAndPassword(
        email: userEmail,
        password: password,
      );
      _setAuthStatus();
    } on FirebaseAuthException catch (error) {
      _handleLogInErrors(error, context);
    }
  }

  void signOut() async {
    await firebaseAuth.signOut();
    authState = AuthState.unknown;
  }

  void _setAuthStatus() {
    _authStateStream.listen((User? user) {
      if (user != null) {
        authState = AuthState.authenticated;
      } else {
        authState = AuthState.unknown;
      }
    });
  }

  void _handleLogInErrors(FirebaseAuthException error, context) {
    print(error.message);
    print(error.code);
    Dialogs.showErrorAlert(context, error.message!);
  }

  Stream<User?> get authStateStream => _authStateStream;
}
