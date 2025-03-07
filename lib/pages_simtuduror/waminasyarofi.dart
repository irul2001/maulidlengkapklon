import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_simtuduror/tsummainnahu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/wakhaitsu.dart';
import 'package:maulidlengkapklon/simtuduror_page.dart';

// ignore: use_key_in_widget_constructors
class Waminasyarofi extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _WaminasyarofiState createState() => _WaminasyarofiState();
}

class _WaminasyarofiState extends State<Waminasyarofi> {
  // List URL gambar
  List<String> imageNames = [
    's15.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Waminnasyarofi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SimtuddurorPage()),
            );
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Image.asset(
            'images/${imageNames[currentIndex]}',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tsummainnahu()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wakhaitsu()),
                );
                setState(() {
                  if (currentIndex < imageNames.length - 1) {
                    currentIndex++;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
