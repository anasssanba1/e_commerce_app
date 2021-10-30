import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  RxBool isloading = false.obs;
  final userEmailput = TextEditingController();
  final userPasswordlput = TextEditingController();
  final AuthService _authService;
  AuthController(this._authService);
  bool get isAuthenticated {
    if (_authService.authState == AuthState.authenticated) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> signUp() async {
    isloading(true);
    await _authService.signUp(userEmailput.text, userPasswordlput.text);
    isloading(false);
  }

  void signOut() => _authService.signOut();
  Stream<User?> get authStateStream => _authService.authStateStream;
}
