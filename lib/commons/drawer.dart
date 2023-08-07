import 'package:flutter/material.dart';

import '../main.dart';
import 'about_babel.dart';
import 'feedback.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.white12,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                      child: Text(
                'B A B E L   L I B',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))),
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text('Home'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Librarian Dashboard'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Accounts & Settings'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.sailing),
                title: Text('About Babel'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.volunteer_activism_outlined),
                title: Text('Feedback'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BabelFeedback()));
                },
              ),
              ListTile(
                leading: Icon(Icons.add_reaction_outlined),
                title: Text('Contact us'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BabelFeedback()));
                },
              ),
            ],
          )),
    );
  }
}
