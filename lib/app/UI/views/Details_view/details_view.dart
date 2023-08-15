import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_docs/config/config.dart';
import 'package:my_docs/controllers/document_controller.dart';
import 'package:my_docs/models/document.dart';

class DetailView extends StatelessWidget {
  DetailView({super.key, required this.doc});
  Document doc;
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();
  Radius containerRaduis = const Radius.circular(30);
  DocumentController documentController = Get.find<DocumentController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.colors.appBarColor,
      appBar: AppBar(
        title: Text(
          'Détails',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Config.colors.appBarColor,
      ),
      body: DecoratedBox(
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
          child: _detailBody(doc),
        ),
      ),
    );
  }
}

Widget _detailBody(Document document) {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Détails du document',
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextDetail('Titre', '${document.title}'),
        SizedBox(
          height: 10,
        ),
        TextDetail('Auteur', '${document.author}'),
        SizedBox(
          height: 12,
        ),
        TextDetail('Description', '${document.description}'),
        SizedBox(
          height: 10,
        ),
        TextDetail('Taille', '${document.size}'),
        SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: (() {
            print('dowloading...');
          }),
          child: Container(
            margin: EdgeInsets.only(
              right: 10,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.download,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Télécharger',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Config.colors.downloadButton),
          ),
        ),
      ],
    ),
  );
}

Widget TextDetail(String text1, String text2) {
  return RichText(
    text: TextSpan(
      text: '$text1 $text2',
      children: [
        TextSpan(
          text: '$text1',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextSpan(
          text: '$text2',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
          ),
        )
      ],
    ),
  );
}
