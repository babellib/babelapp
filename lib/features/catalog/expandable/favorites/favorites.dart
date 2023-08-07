import 'package:flutter/material.dart';
import 'package:ui/features/catalog/expandable/favorites/favorites_cards.dart';

import '../../../../main.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your favorites',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red[100],
        elevation: 8,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView.builder(
        // itemCount: _catalogCards.length,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return FavoritesCard();
        },
      ),
    );
  }
}
