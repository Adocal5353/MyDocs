import 'package:flutter/material.dart';
import 'package:my_docs/models/Doc.dart';

class DownloadView extends StatefulWidget {
  const DownloadView({Key? key}) : super(key: key);

  @override
  State<DownloadView> createState() => _DownloadViewState();
}

class _DownloadViewState extends State<DownloadView> {
  @override
  Widget build(BuildContext context) {
    Document doc = new Document(Dlink: 'Link1', id: 1, name: "cours de cisco");
    Document doc1 = new Document(Dlink: 'Link2', id: 2, name: "cours de ccna");
    Document doc2 = new Document(Dlink: 'Link3', id: 3, name: "cours de BD1");
    Document doc3 = new Document(Dlink: 'Link4', id: 4, name: "cours de BD2");
    Document doc4 = new Document(Dlink: 'Link5', id: 5, name: "IAI togo");
    Document doc5 = new Document(Dlink: 'Link6', id: 6, name: "Cours d L2A");
    Document doc6 = new Document(Dlink: 'Link7', id: 7, name: "cours de L1A");
    Document doc7 =
        new Document(Dlink: 'Link8', id: 8, name: "Liste des admin");
    Document doc8 =
        new Document(Dlink: 'Link9', id: 9, name: "Cours sur tout javascript");
    Document doc9 =
        new Document(Dlink: 'Link10', id: 10, name: "Le lion et le renard");
    var list = new List.empty(growable: true);
    list.add(doc);
    list.add(doc1);
    list.add(doc2);
    list.add(doc3);
    list.add(doc4);
    list.add(doc5);
    //list.add(doc6);
    list.add(doc7);
    list.add(doc8);
    list.add(doc9);
    return Container(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.grey[400],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/logo.png',
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: list.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
