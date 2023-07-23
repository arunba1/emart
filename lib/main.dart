import 'package:e_mart/consts.dart';
import 'package:e_mart/screens/auth_screen/login_screen.dart';
import 'package:e_mart/screens/auth_screen/signup_screen.dart';
import 'package:e_mart/screens/home_screen/home.dart';
import 'package:e_mart/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Using Getx,so changing to get material app.
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            //To set appbar icon color
            iconTheme: IconThemeData(color: darkFontGrey),
            backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
