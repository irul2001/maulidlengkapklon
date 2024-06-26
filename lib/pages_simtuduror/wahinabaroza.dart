import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_simtuduror/mahalulqiam.dart';
import 'package:maulidlengkapklon/pages_simtuduror/tsumainhu.dart';
import 'package:maulidlengkapklon/simtuduror_page.dart';

// ignore: use_key_in_widget_constructors
class Wahinabaroza extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _WahinabarozaState createState() => _WahinabarozaState();
}

class _WahinabarozaState extends State<Wahinabaroza> {
  // List URL gambar
  List<String> imageNames = [
    's11.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wahina Baroza'),
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
                  MaterialPageRoute(builder: (context) => Mahalulqiam()),
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
                  MaterialPageRoute(builder: (context) => Tsumainhu()),
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
