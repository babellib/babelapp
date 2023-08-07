import 'package:flutter/material.dart';
import 'package:ui/features/tracker/pages/tracker_page.dart';
// import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const Tracker());
}

class Tracker extends StatelessWidget {
  const Tracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrackerPage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
