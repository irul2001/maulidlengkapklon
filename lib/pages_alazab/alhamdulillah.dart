// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/al_azab_page.dart';
import 'package:maulidlengkapklon/pages_alazab/ilam.dart';

class Alhamdulillah extends StatefulWidget {
  const Alhamdulillah({super.key});

  @override
  _AlhamdulillahState createState() => _AlhamdulillahState();
}

class _AlhamdulillahState extends State<Alhamdulillah> {
  // List URL gambar
  List<String> imageNames = [
    'Z1.jpg',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alhamdulillah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AlAzabPage()),
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
                  MaterialPageRoute(builder: (context) => const Ilam()),
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
