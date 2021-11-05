import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/authentication/modules/user_state.dart';
import 'package:e_commerce/features/products/views/home_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RxBool isLoadingSignUp = false.obs;
  RxBool isLoadingSignIn = false.obs;
  RxBool isLoadingGoogleSignIn = false.obs;
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
  bool get isAuthenticated => _authService.authState == AuthState.authenticated;

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

  // call this on the sign up button maybe login?
  void setAuthPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isAuthenticated', true);
  }

  //call this on the initstate
  void getAuthPref(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? isAuthenticated = preferences.getBool('isAuthenticated');

    if (isAuthenticated != null) {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.homeView, (Route<dynamic> route) => false);
    }
  }

  void clearAuthPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
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
    userId = _authService.userId;

    isLoadingSignIn(false);
  }

  Future<void> googleLogin(BuildContext context) async {
    isLoadingGoogleSignIn(true);
    await _authService.googleLogin(context);
    userId = _authService.userId;
    isLoadingGoogleSignIn(false);
  }

  void toggleisObscureSignUpPassword() =>
      isObscureSignUpPassword.value = !isObscureSignUpPassword.value;
  void toggleisObscureSignUpConfirmPassword() =>
      isObscureSignUpConfirmPassword.value =
          !isObscureSignUpConfirmPassword.value;
  void toggleisObscureLogInPassword() =>
      isObscureLogInPassword.value = !isObscureLogInPassword.value;

  Future<void> signOut() => _authService.signOut();
  Stream<User?> get authStateStream => _authService.authStateStream;

  GoogleSignInAccount get googleUser => _authService.googleUser;
}
