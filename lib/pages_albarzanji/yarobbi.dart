import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/al_barzanji_page.dart';
import 'package:maulidlengkapklon/pages_albarzanji/abtadiul.dart';

class Yarobbi extends StatefulWidget {
  const Yarobbi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YarobbiState createState() => _YarobbiState();
}

class _YarobbiState extends State<Yarobbi> {
  // List URL gambar
  List<String> imageNames = [
    'B1.png',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yarobbi Sholi'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AlbarzanjiPage()),
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
          mainAxisAlignment: MainAxisAlignment.end, // Set this to end
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Abtadiul()),
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
