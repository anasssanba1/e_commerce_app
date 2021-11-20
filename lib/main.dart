import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/features/authentication/controllers/auth_controller.dart';
import 'package:e_commerce/features/authentication/controllers/database_controller.dart';
import 'package:e_commerce/features/products/controllers/add_product_controller.dart';
import 'package:e_commerce/features/products/views/home_view.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:e_commerce/services/firebase/auth_service.dart';
import 'package:e_commerce/services/firebase/database_serivce.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'features/products/views/product_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIOverlays([]);
  MyBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.pink,
      ),
      initialRoute: Routes.authView,
      //home: HomeView(),
      routes: Routes.routes(context),
    );
  }
}

class MyBindings extends Bindings {
  @override
  void dependencies() {
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
    Get.put<ProductController>(ProductController());
  }
}
