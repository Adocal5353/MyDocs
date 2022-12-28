import 'package:flutter/material.dart';
import 'package:my_docs/models/Doc.dart';
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
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 225, 218, 218),
                    hintText: "Chercher un document...",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 129, 123, 123),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
                  docView("caleb.pdf",
                      "Bibliographie de caleb, qui porte sur les routes et les middelware"),
                  docView("une vie de boy"),
                  docView("Les 100 vivants"),
                  docView("Faire de son mieux"),
                  docView("Père riche, père pauvre"),
                  docView("Le prophète et sa mission"),
                  docView("Le doigt de DIEU"),
                  docView("Bonjour, Saint Esprit"),
                  docView("Accomplir son ministère"),
                  docView("Les lois de la richesse"),
                  docView("Le soleil des indépendances et des régimes forcés"),
                  docView("Sous l'orage", "Séydou Badian"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
