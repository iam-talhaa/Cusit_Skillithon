import 'package:flutter/material.dart';
import 'package:skillithon/constant/my_color.dart';
import 'package:skillithon/utils/flutter_toast.dart';

class Application_form extends StatefulWidget {
  const Application_form({super.key});

  @override
  State<Application_form> createState() => _Application_formState();
}

class _Application_formState extends State<Application_form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Application Form'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: cream_color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15.0))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Department",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.notes),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15.0))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "web/Mobile/Ai",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15.0))),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: "Any Query..",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.mail),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15.0))),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Utils().Toast_msg("Form Submitted", Colors.blueAccent);
                },
                child: Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: brown_sand,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 97, 57, 43)),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
