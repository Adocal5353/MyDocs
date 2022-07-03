import 'package:flutter/material.dart';

class Bbutton extends StatelessWidget {
  final String title;
  final Color titlecolor, color;
  final double radius, height;
  final void Function() onPressed;
  const Bbutton(
      {Key? key,
      required this.title,
      required this.titlecolor,
      required this.color,
      this.radius = 10,
      this.height = 15,
      required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          color: titlecolor,
          fontWeight: FontWeight.w500,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
    );
  }
}
