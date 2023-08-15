import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_docs/app/services/dio_service.dart';
import 'package:my_docs/controllers/document_controller.dart';

class ManageFile extends StatelessWidget {
  ManageFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Manage all the file you have uploaded',
        ),
      ),
    );
  }
}
