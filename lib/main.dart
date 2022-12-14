import 'package:flutter/material.dart';
import 'package:pbyj_app/Homepage/FarmerHomePage.dart';
import 'package:pbyj_app/Homepage/MainHome.dart';
import 'package:pbyj_app/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/home.dart';
import 'pages/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        "/": (context) => const LoginPage(),
        // MyRoutes.Register: (context) => Register(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.FarmerHome: (context) => const FarmerHome(),
        MyRoutes.MainHome: (context) => const MainHome(),
        // MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
