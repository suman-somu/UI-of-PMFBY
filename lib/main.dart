import 'package:flutter/material.dart';
import 'package:pbyj_app/utils/routes.dart';

import 'pages/home.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        // MyRoutes.Register: (context) => Register(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
