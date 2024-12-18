import 'package:flutter/material.dart';
import 'package:skillithon/ui/Admin_dashboard/admin_dashboard.dart';
import 'package:skillithon/ui/Login%20And%20Signup/login.dart';
import 'package:skillithon/ui/Login%20And%20Signup/signup.dart';
import 'package:skillithon/ui/splash_screen/splash_screen.dart';

void main() {
  runApp(Skillithon());
}

class Skillithon extends StatefulWidget {
  const Skillithon({super.key});

  @override
  State<Skillithon> createState() => _SkillithonState();
}

class _SkillithonState extends State<Skillithon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard_screen(),
    );
  }
}
