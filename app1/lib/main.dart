import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app1/pages/homepage.dart';
import 'package:app1/pages/splashScreen.dart';
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
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          splash: const SplashScreen(),
          nextScreen: const HomeScreen()),
    );
  }
}
