import 'package:flutter/material.dart';

import '../../main.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'Library name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue[100],
          elevation: 8,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.red[300],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
          label: Text('Book Here'),
          backgroundColor: Colors.blue[200],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/library2.png',
                    height: 200,
                    width: 340,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                height: 2,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
                color: Colors.blue,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Add some spacing between the top of the card and the title
                    Container(height: 5),
                    // Add a title widget
                    Text(
                      "Library name ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    // Add some spacing between the title and the subtitle
                    Container(height: 5),
                    // Add a subtitle widget
                    Text(
                      "Library address",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                    // Add some spacing between the subtitle and the text
                    Container(height: 10),
                    const Divider(
                      height: 20,
                      thickness: 0.5,
                      indent: 2,
                      endIndent: 0,
                      color: Colors.blue,
                    ),

                    Text(
                      "Prices",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Container(height: 10),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border.all(
                          color: Colors.blue,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(children: [
                                Text(
                                  'hourly',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(width: 4),
                                Text(
                                  '₹15',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ]),
                              Column(children: [
                                Text(
                                  'weekly',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(width: 4),
                                Text(
                                  '₹49',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ]),
                              Column(children: [
                                Text(
                                  'monthly',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Container(width: 4),
                                Text(
                                  '₹599',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ]),
                              Container(width: 2),
                            ]),
                      ),
                    ),
                    Container(height: 10),
                    const Divider(
                      height: 10,
                      thickness: 0.5,
                      indent: 2,
                      endIndent: 0,
                      color: Colors.blue,
                    ),
                    Container(height: 10),
                    Text(
                      "Library Description ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    // Add some spacing between the title and the subtitle
                    Container(height: 5),
                    // Add a subtitle widget
                    Text(
                      "We are heartfully open to students who want to study and explore.",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
