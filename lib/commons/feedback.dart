import 'package:flutter/material.dart';

import '../main.dart';
import 'about_babel.dart';

class BabelFeedback extends StatelessWidget {
  const BabelFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'feedback',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: Icon(Icons.home_outlined),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AboutPage()));
        },
        icon: Icon(Icons.auto_awesome),
        label: Text('Want more features?'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
