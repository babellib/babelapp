import 'package:flutter/material.dart';
import 'package:ui/features/catalog/library_info.dart';

class CatalogCard extends StatelessWidget {
  const CatalogCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LibraryPage()));
          },
          child: Card(
            // Define the shape of the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            // Define how the card's content should be clipped
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // Define the child widget of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Add padding around the row widget
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Add an image widget to display an image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/library.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Add some spacing between the image and the text
                      Container(width: 10),
                      // Add an expanded widget to take up the remaining horizontal space
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add some spacing between the top of the card and the title
                            Container(height: 5),
                            // Add a title widget
                            Text(
                              "Library name ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            // Add some spacing between the title and the subtitle
                            Container(height: 0),
                            // Add a subtitle widget
                            Text(
                              "Library address",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 12),
                            ),
                            // Add some spacing between the subtitle and the text
                            Container(height: 10),
                            // Add a text widget to display some text
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[100],
                                border: Border.all(
                                  color: Colors.deepPurple,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(children: [
                                        Text(
                                          'hourly',
                                          style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Container(width: 2),
                                        Text(
                                          '₹15',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ]),
                                      Column(children: [
                                        Text(
                                          'weekly',
                                          style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Container(width: 2),
                                        Text(
                                          '₹49',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ]),
                                      Column(children: [
                                        Text(
                                          'monthly',
                                          style: TextStyle(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        Container(width: 2),
                                        Text(
                                          '₹599',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ]),
                                      Container(width: 2),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
