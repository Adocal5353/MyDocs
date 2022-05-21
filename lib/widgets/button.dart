import 'package:flutter/material.dart';

class Cbutton extends StatelessWidget {
  final String title;
  final Color titlecolor, color;
  final double radius, height;
  final void Function() onPressed;
  const Cbutton(
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
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(fontSize: 16.0, color: titlecolor),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
          backgroundColor: MaterialStateProperty.all<Color>(color),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: height, horizontal: 10))),
    );
  }
}
