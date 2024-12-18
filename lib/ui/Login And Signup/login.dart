import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skillithon/constant/my_color.dart';
import 'package:skillithon/custom_widgets/custom_button.dart';
import 'package:skillithon/ui/Admin_dashboard/admin_dashboard.dart';
import 'package:skillithon/ui/Login%20And%20Signup/signup.dart';
import 'package:skillithon/utils/flutter_toast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailContoler = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
              child: Center(
                child: GlassmorphicContainer(
                    width: 300,
                    height: 500,
                    borderRadius: 20,
                    blur: 20,
                    alignment: Alignment.bottomCenter,
                    border: 2,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Text('Login ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: cream_color,
                                  fontSize: 50)),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Enter your Email",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(Icons.mail),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFffffff).withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(15.0))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(Icons.password),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFffffff).withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(15.0))),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Custom_Button(
                              B_color: const Color.fromARGB(255, 62, 134, 172),
                              B_height: 45.0,
                              B_text: "LogIn",
                              B_width: 130.0,
                              ontap: () {
                                // if (_emailContoler.text.isEmpty ||
                                //     _passwordController.text.isEmpty) {
                                //   Utils()
                                //       .Toast_msg("Enter the Data", Colors.red);
                                // } else {
                                //   Navigator.of(context).push(MaterialPageRoute(
                                //       builder: (BuildContext context) =>
                                //           DashBoard_screen()));
                                // }
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DashBoard_screen()));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dont have an account',
                                style:
                                    TextStyle(fontSize: 13, color: cream_color),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                Signup_screen()));
                                  },
                                  child: Text('Signup'))
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
