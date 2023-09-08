import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_docs/widgets/button.dart';
import 'package:my_docs/widgets/textfield.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'send us a feedback please',
        ),
      ),
    );
  }
}
