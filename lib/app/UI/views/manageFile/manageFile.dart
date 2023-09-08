import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_docs/app/services/dio_service.dart';
import 'package:my_docs/controllers/document_controller.dart';

class ManageFile extends StatelessWidget {
  ManageFile({Key? key}) : super(key: key);

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
            child: Text(
              'Manage all the files you\'ve uploaded',
            ),
          ),
        ),
      ),
    );
  }
}
