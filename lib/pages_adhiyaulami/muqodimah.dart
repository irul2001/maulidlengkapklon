import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/adhiya_ulami_page.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/yarobbi.dart';

class Muqodimah extends StatefulWidget {
  const Muqodimah({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MuqodimahState createState() => _MuqodimahState();
}

class _MuqodimahState extends State<Muqodimah> {
  // List URL gambar
  List<String> imageNames = [
    'A1.jpg',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muqodimah'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdhiyaUlamiPage()),
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
                  MaterialPageRoute(builder: (context) => const Yarobbi()),
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
