import 'package:flutter/material.dart';
import 'package:my_docs/models/Doc.dart';
import 'package:my_docs/widgets/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var list = new List.empty(growable: true);
    list.add('Cours de CCNA');
    list.add(' Implementation BD');
    list.add('Liste des admis');
    list.add('Cours de programmation C');
    list.add('Cours de programmation python');
    list.add('Langage Java');
    list.add('Developpez votre API Rest');
    list.add('Creer votre première appli mobile');
    list.add('Cours de maths');
    list.add('Cours electronique numérique');
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
          ),
          Text(
            "Latest files",
            style: Theme.of(context).textTheme.headline4,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/pdf.png',
                    ),
                    Column(
                      children: [
                        Text(
                          list[index],
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Cbutton(
                            title: "Telecharger",
                            titlecolor: Colors.white,
                            color: Colors.blue.shade400,
                            onPressed: () => {}),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: list.length,
            physics: ClampingScrollPhysics(),
          )
        ],
      ),
    );
  }
}
