import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_simtuduror/walaqodit.dart';
import 'package:maulidlengkapklon/pages_simtuduror/waminasyarofi.dart';
import 'package:maulidlengkapklon/simtuduror_page.dart';

// ignore: use_key_in_widget_constructors
class Wakhaitsu extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _WakhaitsuState createState() => _WakhaitsuState();
}

class _WakhaitsuState extends State<Wakhaitsu> {
  // List URL gambar
  List<String> imageNames = [
    's16.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wa Khaitsu Tasarrofatil',
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
                  MaterialPageRoute(builder: (context) => Waminasyarofi()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Walaqodit()),
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
