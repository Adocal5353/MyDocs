import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    final Radius containerRaduis = const Radius.circular(30);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: containerRaduis,
          topLeft: containerRaduis,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 20,
        ),
        child: Container(
          child: Center(
            child: Text("Privacy Policy Page"),
          ),
        ),
      ),
    );
  }
}
