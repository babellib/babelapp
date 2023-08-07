import 'package:flutter/material.dart';
import 'package:ui/commons/feedback.dart';

import '../main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Babel : A Self-study Ecosytem',
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
              .push(MaterialPageRoute(builder: (context) => BabelFeedback()));
        },
        icon: Icon(Icons.face_retouching_natural),
        label: Text('Help Babel !'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
