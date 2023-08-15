import 'package:flutter/material.dart';
import 'package:my_docs/app/services/dio_service.dart';

class AddFile extends StatelessWidget {
  const AddFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DioService()
        .getMethod('https://mockend.com/Adocal5353/MyDocs/documents?limit=4');
    return Container(
      child: Text("Hello you can add a file here"),
    );
  }
}
