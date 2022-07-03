import 'package:flutter/material.dart';
import 'package:my_docs/models/Doc.dart';
import 'package:my_docs/widgets/button.dart';

import 'Bbutton.dart';

Widget docView(String title, [String description = '']) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color.fromRGBO(196, 196, 196, 0.2),
    ),
    padding: EdgeInsets.all(10),
    height: description == '' ? 100 : 107,
    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/pdf.png',
          fit: BoxFit.contain,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                textScaleFactor: 1,
              ),
              SizedBox(
                height: description == '' ? 0 : 7.0,
              ),
              Text(
                description,
                textAlign: TextAlign.left,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.download,
                    color: Colors.blue.shade200,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(
                    Icons.share,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
