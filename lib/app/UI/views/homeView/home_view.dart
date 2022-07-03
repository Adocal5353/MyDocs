import 'package:flutter/material.dart';
import 'package:my_docs/models/Doc.dart';
import 'package:my_docs/widgets/button.dart';
import 'package:my_docs/widgets/docView.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var containerRaduis = Radius.circular(30.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: containerRaduis,
          topLeft: containerRaduis,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
          child: ListView(
            children: [
              docView("caleb.pdf", "Bibliographie de caleb"),
              docView("La vie de prière.pdf"),
            ],
          )),
    );
  }
}
