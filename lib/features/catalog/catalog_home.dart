import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ui/features/catalog/catalog_cards.dart';
import 'package:ui/features/catalog/expandable/favorites/favorites.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  // final List _catalogCards = [
  //   'post 1',
  //   'post 2',
  //   'post 3',
  //   'post 4',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        floatingActionButton: SpeedDial(
          backgroundColor: Colors.deepPurple[200],
          animatedIcon: AnimatedIcons.view_list,
          overlayOpacity: 0.5,
          overlayColor: Colors.deepPurple[300],
          spacing: 15,
          spaceBetweenChildren: 10,
          children: [
            SpeedDialChild(
              child: Icon(Icons.location_on),
              label: 'Locations',
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => FavoritesPage()));
              // },
              backgroundColor: Colors.green[100],
              labelBackgroundColor: Colors.green[50],
            ),
            SpeedDialChild(
              child: Icon(Icons.browse_gallery),
              label: 'Recents',
              backgroundColor: Colors.blue[100],
              labelBackgroundColor: Colors.blue[50],
            ),
            SpeedDialChild(
              child: Icon(Icons.favorite),
              label: 'Favorites',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => FavoritesPage()));
              },
              backgroundColor: Colors.red[100],
              labelBackgroundColor: Colors.red[50],
            )
          ],
        ),
        body: ListView.builder(
          // itemCount: _catalogCards.length,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return CatalogCard();
          },
        ));
  }
}
