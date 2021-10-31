import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class AuthController extends GetxController {
  RxBool isLoadingSignUp = false.obs;
  RxBool isLoadingSignIn = false.obs;
  final userEmailIputSignUp = TextEditingController();
  final userPasswordIlputSignUp = TextEditingController();
  final userEmailInputLogin = TextEditingController();
  final userPasswordInputLogin = TextEditingController();
  final AuthService _authService;
  AuthController(this._authService);
  bool get isAuthenticated {
    if (_authService.authState == AuthState.authenticated) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    _authService.authStateStream.listen((User? user) {
      if (user != null) {
        Get.toNamed(Routes.homePage);
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    userEmailIputSignUp.dispose();
    userPasswordIlputSignUp.dispose();
    userEmailInputLogin.dispose();
    userPasswordInputLogin.dispose();
  }

  Future<void> signUp(BuildContext context) async {
    isLoadingSignUp(true);
    await _authService.signUp(
        userEmailIputSignUp.text, userPasswordIlputSignUp.text, context);
    isLoadingSignUp(false);
  }

  Future<void> signIn(BuildContext context) async {
    isLoadingSignIn(true);
    await _authService.SignIn(
        userEmailInputLogin.text, userPasswordInputLogin.text, context);
    isLoadingSignIn(false);
  }

  void signOut() => _authService.signOut();
  Stream<User?> get authStateStream => _authService.authStateStream;
}
