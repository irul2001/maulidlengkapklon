import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslussani.dart';
import 'package:maulidlengkapklon/qoaidah_burdah_page.dart';

class Alfaslulawal extends StatefulWidget {
  const Alfaslulawal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlfaslulawalState createState() => _AlfaslulawalState();
}

class _AlfaslulawalState extends State<Alfaslulawal> {
  // List URL gambar
  List<String> imageNames = [
    'Q1.jpg',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alfaslul Awwal',
          style: TextStyle(color: Colors.white),
        ),
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
          mainAxisAlignment: MainAxisAlignment.end, // Set this to end
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Alfaslussani()),
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
