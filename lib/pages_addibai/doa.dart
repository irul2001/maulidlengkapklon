import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/maulid_ad_dibai_page.dart';
import 'package:maulidlengkapklon/pages_addibai/alhamdulillahqowi.dart';

class Doa extends StatefulWidget {
  const Doa({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DoaState createState() => _DoaState();
}

class _DoaState extends State<Doa> {
  // List URL gambar
  List<String> imageNames = [
    's18.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doa'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MaulidAdDibaiPage()),
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
                  MaterialPageRoute(
                      builder: (context) => const Alhamdulillahqowi()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
