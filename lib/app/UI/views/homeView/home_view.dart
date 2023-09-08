import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:my_docs/config/config.dart';
import 'package:my_docs/controllers/document_controller.dart';
import 'package:my_docs/models/document.dart';
import 'package:my_docs/widgets/docView.dart';
import 'package:my_docs/app/services/dio_service.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final Radius containerRaduis = const Radius.circular(30);
  DocumentController documentController = Get.put(DocumentController());
  var documents = [
    new Document("evefv", 1, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 2, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 3, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 4, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 5, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 6, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 7, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 8, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 9, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 10, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100),
    new Document("evefv", 11, "Caleb", "Good news",
        "La bonne nouvelle doit être propagé dans tout le monde", 100)
  ];
  @override
  Widget build(BuildContext context) {
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
        child: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 251, 240, 240),
                    hintText: 'Chercher un document par le titre...',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 129, 123, 123),
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () {
                    return documentController.getDocuments();
                  },
                  color: Colors.deepPurpleAccent,
                  child: GetBuilder<DocumentController>(
                    id: 1,
                    builder: (_) => SingleChildScrollView(
                      child: !documentController.isInternetConnect.value
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: Lottie.asset(
                                        'assets/animations/no-internet.json'),
                                  ),
                                  MaterialButton(
                                    onPressed: () async {
                                      if (await InternetConnectionChecker()
                                              .hasConnection ==
                                          true) {
                                        documentController.getDocuments();
                                      } else {
                                        showCustomSnackBar(context,
                                            "Erreur, Veuillez vérifier votre connexion internet.");
                                      }
                                    },
                                    color: Colors.red.shade300,
                                    child: Text(
                                      "Réessayer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : documentController.isLoading.value
                              ? _buildLoading()
                              : _buildBody(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return ListView.separated(
      itemCount: documents.length,
      itemBuilder: (context, index) {
        return docWait(documents[index]);
      },
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 8,
        );
      },
    );
  }

  Center _buildLoading() {
    return Center(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Lottie.asset(
          'assets/animations/docloader.json',
        ),
      ),
    );
  }
}
