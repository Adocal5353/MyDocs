import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_docs/app/UI/shared/my_drawer/my_drawer_header.dart';
import 'package:my_docs/app/UI/views/AccountView/account.dart';
import 'package:my_docs/app/UI/views/feedbackView/feedbackView.dart';
import 'package:my_docs/app/UI/views/homeView/home_view.dart';
import 'package:my_docs/app/UI/views/manageFile/manageFile.dart';
import 'package:my_docs/app/UI/views/privacyView/privacy.dart';
import 'package:my_docs/app/UI/views/settingsView/Settings.dart';
import 'package:my_docs/config/config.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Docs',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MyDocs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DrawerSection currentPage = DrawerSection.home;
  Radius containerRaduis = const Radius.circular(30);
  @override
  Widget build(BuildContext context) {
    Widget? container;
    if (currentPage == DrawerSection.home) {
      container = HomeView();
    } else if (currentPage == DrawerSection.manageFile) {
      container = ManageFile();
    } else if (currentPage == DrawerSection.account) {
      container = const AccountView();
    } else if (currentPage == DrawerSection.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSection.send_feedback) {
      container = const FeedbackView();
    } else if (currentPage == DrawerSection.settings) {
      container = const Settings();
    }

    return Scaffold(
      backgroundColor: Config.colors.appBarColor,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Config.colors.appBarColor,
        actions: [
          IconButton(
            icon: Icon(Icons.toggle_off),
            onPressed: (() {}),
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (() {}),
          ),
        ],
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
          child: container,
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              DrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.home;
            } else if (id == 2) {
              currentPage = DrawerSection.manageFile;
            } else if (id == 3) {
              currentPage = DrawerSection.account;
            } else if (id == 4) {
              currentPage = DrawerSection.settings;
            } else if (id == 5) {
              currentPage = DrawerSection.send_feedback;
            } else if (id == 6) {
              currentPage = DrawerSection.privacy_policy;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget DrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, 'Accueil', Icons.home,
              currentPage == DrawerSection.home ? true : false),
          menuItem(2, 'Mes fichiers', Icons.file_present_sharp,
              currentPage == DrawerSection.manageFile ? true : false),
          Divider(),
          menuItem(3, 'Mon compte', Icons.account_box_rounded,
              currentPage == DrawerSection.account ? true : false),
          menuItem(4, 'Paramètres', Icons.settings,
              currentPage == DrawerSection.settings ? true : false),
          Divider(),
          menuItem(5, 'Retours', Icons.feedback,
              currentPage == DrawerSection.send_feedback ? true : false),
          menuItem(6, 'conditions utilisation', Icons.privacy_tip_rounded,
              currentPage == DrawerSection.privacy_policy ? true : false)
        ],
      ),
    );
  }
}

enum DrawerSection {
  home,
  manageFile,
  account,
  privacy_policy,
  send_feedback,
  settings
}
