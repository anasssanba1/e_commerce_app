import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:e_commerce/services/firebase/database_serivce.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put(
    AuthController(
      AuthService(),
    ),
  );
  Get.put<DataBaseController>(
    DataBaseController(
      DataBase(),
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: Routes.authView,
      routes: Routes.routes(context),
    );
  }
}
