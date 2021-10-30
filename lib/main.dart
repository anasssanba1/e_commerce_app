import 'package:e_commerce/features/authentication/views/sign_up_page.dart';
import 'package:e_commerce/routes/routes.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
      initialRoute: Routes.signUpPage,
      routes: Routes.routes(context),
    );
  }
}
