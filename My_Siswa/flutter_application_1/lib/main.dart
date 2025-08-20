import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:lottie/lottie.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        duration: const Duration(milliseconds: 3000),
        childWidget: SizedBox(
          width: 120,
          height: 120,
          child: Lottie.asset('assets/loading.json'),
        ),
        nextScreen: const Login(),
      ),
    );
  }
}

