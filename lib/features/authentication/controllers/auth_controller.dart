import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/features/authentication/views/home_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';

class AuthController extends GetxController {
  RxBool isLoadingSignUp = false.obs;
  RxBool isLoadingSignIn = false.obs;
  RxBool isObscureSignUpPassword = true.obs;
  RxBool isObscureSignUpConfirmPassword = true.obs;
  RxBool isObscureLogInPassword = true.obs;
  String? userId;
  final userEmailIputSignUp = TextEditingController();
  final userPasswordIlputSignUp = TextEditingController();
  final userEmailInputLogin = TextEditingController();
  final userPasswordInputLogin = TextEditingController();
  final userConfirmPassowordInput = TextEditingController();
  final userNameInput = TextEditingController();
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
  void onClose() {
    super.onClose();
    print('disposed of all auth form!');
    userEmailIputSignUp.dispose();
    userPasswordIlputSignUp.dispose();
    userEmailInputLogin.dispose();
    userPasswordInputLogin.dispose();
    userConfirmPassowordInput.dispose();
  }

  Future<void> signUp(BuildContext context) async {
    isLoadingSignUp(true);
    await _authService.signUp(
        userEmailIputSignUp.text, userPasswordIlputSignUp.text, context);
    userId = _authService.userId;
    isLoadingSignUp(false);
  }

  Future<void> signIn(BuildContext context) async {
    isLoadingSignIn(true);
    await _authService.SignIn(
        userEmailInputLogin.text, userPasswordInputLogin.text, context);

    isLoadingSignIn(false);
  }

  void toggleisObscureSignUpPassword() =>
      isObscureSignUpPassword.value = !isObscureSignUpPassword.value;
  void toggleisObscureSignUpConfirmPassword() =>
      isObscureSignUpConfirmPassword.value =
          !isObscureSignUpConfirmPassword.value;
  void toggleisObscureLogInPassword() =>
      isObscureLogInPassword.value = !isObscureLogInPassword.value;

  void signOut() => _authService.signOut();
  Stream<User?> get authStateStream => _authService.authStateStream;
}
