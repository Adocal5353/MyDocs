import 'package:flutter/material.dart';
import 'package:my_docs/app/UI/shared/my_drawer/my_drawer_header.dart';
import 'package:my_docs/app/UI/views/AccountView/account.dart';
import 'package:my_docs/app/UI/views/downloadFileView/downloadFile.dart';
import 'package:my_docs/app/UI/views/feedbackView/feedbackView.dart';
import 'package:my_docs/app/UI/views/homeView/home_view.dart';
import 'package:my_docs/app/UI/views/manageFile/manageFile.dart';
import 'package:my_docs/app/UI/views/privacyView/privacy.dart';

class MyBodyDrawer extends StatefulWidget {
  const MyBodyDrawer({Key? key}) : super(key: key);

  @override
  _MyBodyDrawerState createState() => _MyBodyDrawerState();
}

class _MyBodyDrawerState extends State<MyBodyDrawer> {
  var currentPage = DrawerSection.home;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.home) {
      container = HomeView();
    } else if (currentPage == DrawerSection.manageFile) {
      container = ManageFile();
    } else if (currentPage == DrawerSection.downloadFile) {
      container = DownloadView();
    } else if (currentPage == DrawerSection.account) {
      container = AccountView();
    } else if (currentPage == DrawerSection.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSection.send_feedback) {
      container = FeedbackView();
    }
    return Container(
      child: Column(
        children: [
          MyHeaderDrawer(),
          DrawerList(),
        ],
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
          menuItem(3, 'Explorer', Icons.search,
              currentPage == DrawerSection.downloadFile ? true : false),
          menuItem(4, 'Mon compte', Icons.account_box_rounded,
              currentPage == DrawerSection.account ? true : false),
          menuItem(5, 'Retours', Icons.feedback,
              currentPage == DrawerSection.send_feedback ? true : false),
          menuItem(6, 'conditions utilisation', Icons.privacy_tip_rounded,
              currentPage == DrawerSection.privacy_policy ? true : false)
        ],
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
              currentPage = DrawerSection.downloadFile;
            } else if (id == 3) {
              currentPage = DrawerSection.manageFile;
            } else if (id == 4) {
              currentPage = DrawerSection.account;
            } else if (id == 6) {
              currentPage = DrawerSection.privacy_policy;
            } else if (id == 7) {
              currentPage = DrawerSection.send_feedback;
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
}

enum DrawerSection {
  home,
  manageFile,
  downloadFile,
  account,
  privacy_policy,
  send_feedback
}
