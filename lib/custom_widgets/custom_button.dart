import 'package:flutter/material.dart';

class Custom_Button extends StatefulWidget {
  final B_height;
  final B_width;
  final B_color;
  final B_text;
  final VoidCallback ontap;
  const Custom_Button(
      {super.key,
      required this.B_color,
      required this.B_height,
      required this.B_text,
      required this.B_width,
      required this.ontap});

  @override
  State<Custom_Button> createState() => _Custom_ButtonState();
}

class _Custom_ButtonState extends State<Custom_Button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: widget.B_height,
        width: widget.B_width,
        decoration: BoxDecoration(
            color: widget.B_color, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          widget.B_text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
