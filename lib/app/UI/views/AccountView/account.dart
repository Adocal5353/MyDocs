import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_docs/widgets/button.dart';
import 'package:my_docs/widgets/textfield.dart';

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
                top: 20,
              ),
              child: Hero(
                tag: widget,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/logo.png",
                  ),
                  radius: 70,
                ),
              ),
            ),
            Text(
              "My account",
              style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 10,
              ),
            ),
            Text(
              "My tag name",
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
            ),
            Text(
              "name",
            ),
            FieldForm(
              hint: "here's your name",
            ),
            Text(
              "your email",
            ),
            FieldForm(
              hint: "here's your email",
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20,
              ),
            ),
            Cbutton(
              title: "Delete acount",
              titlecolor: Colors.redAccent,
              color: Colors.grey.shade200,
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
