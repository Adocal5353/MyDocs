import 'package:flutter/material.dart';

// ignore: avoid_types_as_parameter_names
route(context, widget, {bool close = false}) => close
    ? Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => widget), (route) => false)
    : Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));

/*
void _resetAndOpenPage() {
  navigator.pushAndRemoveUntil<void>(
    MaterialPageRoute<void>(builder: (BuildContext context) => const MyHomePage()),
    ModalRoute.withName('/'),
  );
}*/
