import 'package:flutter/material.dart';
import 'package:skillithon/service/splash_service.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  SplashService _splashService = SplashService();

  @override
  void initState() {
    super.initState();
    _splashService.Login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/logo.png'),
            ),
          )
        ],
      ),
    );
  }
}