// ignore_for_file: file_names, avoid_unnecessary_containers, override_on_non_overriding_member, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   navigatetohome();
  // }

  // void navigatetohome() async {
  //   await Future.delayed(const Duration(milliseconds: 1500), () {});
  //   Get.to(const HomeScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 500,
            width: 300,
            child: Image.network(
                'https://schools.aglasem.com/wp-content/uploads/2023/04/KVS-Admission-750x375.jpg?crop=1')),
      ),
    );
  }
}
