import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/ui/trash/trash_view.dart';
import 'package:share/share.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text("All notes"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Share notebooks"),
              onTap: () {
                Share.share("title");
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("My Favourite"),
              onTap: () {
                Get.toNamed('/fav');
              },
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Recycle bin"),
              onTap: () {
                Get.toNamed('/trashView');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("clear all note"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
