import 'package:flutter/material.dart';
import 'package:skillithon/constant/my_color.dart';
import 'package:skillithon/custom_widgets/custom_button.dart';

class DashBoard_screen extends StatefulWidget {
  const DashBoard_screen({super.key});

  @override
  State<DashBoard_screen> createState() => _DashBoard_screenState();
}

class _DashBoard_screenState extends State<DashBoard_screen> {
  List<String> _titile_list = [
    'App Dvel... ',
    'Web Devel.. ',
    'Networking  ',
    'Graphic de..',
    'Ai        ..',
    'Desktop Ap..'
  ];

  List<String> _discription_list = [
    'Application development using Flutter',
    'Networking Description',
    '3',
    '4',
    '6',
    '7'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: cream_color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: brown_sand,
                              borderRadius: BorderRadius.circular(17)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.computer_outlined,
                                  size: 70,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      _titile_list[index].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      _discription_list[index].toString(),
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                Custom_Button(
                                    B_color: Colors.brown,
                                    B_height: 40.0,
                                    B_text: "Apply",
                                    B_width: 80.0,
                                    ontap: () {})
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
