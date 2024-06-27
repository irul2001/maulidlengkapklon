import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/adhiya_ulami_page.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/alhamdulillah.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/yarobbi.dart';

class Innafatahna extends StatefulWidget {
  const Innafatahna({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InnafatahnaState createState() => _InnafatahnaState();
}

class _InnafatahnaState extends State<Innafatahna> {
  // List URL gambar
  List<String> imageNames = [
    'A3.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Innafatahna',
          style: TextStyle(color: Colors.white),
        ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Yarobbi()),
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
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => Alhamdulillah()),
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
