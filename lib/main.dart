import 'package:e_commerce/constants/app_colors.dart';
import 'package:e_commerce/features/authentication/views/sign_up_page.dart';
import 'package:e_commerce/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      onGenerateRoute: Routes.controller,
      initialRoute: Routes.signUpPage,
    );
  }
}
