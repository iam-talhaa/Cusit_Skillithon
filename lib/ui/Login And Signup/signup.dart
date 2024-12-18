import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:skillithon/constant/my_color.dart';
import 'package:skillithon/custom_widgets/custom_button.dart';
import 'package:skillithon/ui/Admin_dashboard/admin_dashboard.dart';
import 'package:skillithon/ui/Login%20And%20Signup/login.dart';
import 'package:skillithon/utils/flutter_toast.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberber = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    height: 700,
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
                            height: 30,
                          ),
                          Text('SignUp ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: cream_color,
                                  fontSize: 50)),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: cream_color,
                                ),
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
                            decoration: InputDecoration(
                                hintText: "Enter your Email",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: cream_color,
                                ),
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
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(
                                  Icons.password_outlined,
                                  color: cream_color,
                                ),
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
                            decoration: InputDecoration(
                                hintText: "+92-000-0000000",
                                hintStyle: TextStyle(
                                  color: Color(0xFFffffff).withOpacity(0.5),
                                ),
                                prefixIcon: Icon(
                                  Icons.numbers,
                                  color: cream_color,
                                ),
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
                              B_text: "REGISTER",
                              B_width: 130.0,
                              ontap: () {
                                if (_emailController.text.isEmpty ||
                                    _passwordController.text.isEmpty ||
                                    _nameController.text.isEmpty ||
                                    _phoneNumberber.text.isEmpty) {
                                  Utils().Toast_msg(
                                      'Enter the valid Dat', Colors.blue);
                                } else {
                                  Utils().Toast_msg(
                                      'SignUp Successfull', Colors.blue);

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          DashBoard_screen()));
                                }
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an Account?',
                                style:
                                    TextStyle(fontSize: 13, color: cream_color),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginScreen()));
                                  },
                                  child: Text('LogIn'))
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
