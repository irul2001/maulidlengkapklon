import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslulawal.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslussalis.dart';
import 'package:maulidlengkapklon/qoaidah_burdah_page.dart';

class Alfaslussani extends StatefulWidget {
  const Alfaslussani({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlfaslussaniState createState() => _AlfaslussaniState();
}

class _AlfaslussaniState extends State<Alfaslussani> {
  // List URL gambar
  List<String> imageNames = [
    'Q2.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Faslus Sani - 2'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const QoaidahBurdahPage()),
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
                  MaterialPageRoute(builder: (context) => const Alfaslulawal()),
                );
                setState(() {
                  if (currentIndex > 0) {
                    currentIndex--;
                  }
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Alfaslussalis()),
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
