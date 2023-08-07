import 'package:flutter/material.dart';
import 'package:ui/commons/drawer.dart';
import 'package:ui/commons/feedback.dart';
import 'package:ui/features/catalog/catalog_home.dart';
import 'package:ui/features/dashboard/dashboard.dart';
import 'package:ui/features/tracker/tracker.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'commons/about_babel.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    CatalogPage(),
    Tracker(),
    DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'Rise & shine scholars!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.deepPurple[200],
        elevation: 12,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.volunteer_activism_outlined),
            // color: Colors.deepPurple[100],
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          elevation: 8,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple[200],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.gite),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.poll), label: 'Track'),
            BottomNavigationBarItem(
                icon: Icon(Icons.auto_awesome), label: 'Dashboard'),
          ]),
    );
  }
}
