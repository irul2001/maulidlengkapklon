import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/maulid_ad_dibai_page.dart';
import 'package:maulidlengkapklon/pages_addibai/doa.dart';
import 'package:maulidlengkapklon/pages_addibai/yarosulallah.dart';

class Alhamdulillahqowi extends StatefulWidget {
  const Alhamdulillahqowi({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AlhamdulillahqowiState createState() => _AlhamdulillahqowiState();
}

class _AlhamdulillahqowiState extends State<Alhamdulillahqowi> {
  // List URL gambar
  List<String> imageNames = [
    'D4.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alhamdulillahil Qowi'),
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
                  MaterialPageRoute(builder: (context) => const Yarosulallah()),
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
                  MaterialPageRoute(builder: (context) => const Doa()),
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
