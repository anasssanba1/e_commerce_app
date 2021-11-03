import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/modules/user.dart';
import 'package:e_commerce/services/firebase/database_serivce.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class DataBaseController extends GetxController {
  final DataBase _database;
  final AuthController _authController = Get.find<AuthController>();

  DataBaseController(this._database);
  Future<void> addUsertoDatabase() => _database.addUsertoDatabase(
        UserModule(
          userId: _authController.userId!,
          userName: _authController.userNameInput.text,
          userEmail: _authController.userEmailIputSignUp.text,
        ),
      );
  Future<void> addUserGoogleinfo() => _database.addUsertoDatabase(
        UserModule(
          userId: _authController.userId!,
          userName: _authController.googleUser.displayName!,
          userEmail: _authController.googleUser.email,
          userImage: _authController.googleUser.photoUrl,
        ),
      );
  CollectionReference get users => _database.users;
}
