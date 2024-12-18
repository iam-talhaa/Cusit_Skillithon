import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skillithon/ui/Login%20And%20Signup/login.dart';

class SplashService {
  void Login(BuildContext context) {
    Timer(Duration(seconds: 03), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }
}
