import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_simtuduror/yarobbi.dart';
import 'package:maulidlengkapklon/simtuduror_page.dart';

class InnafatahnaPage extends StatefulWidget {
  const InnafatahnaPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InnafatahnaPageState createState() => _InnafatahnaPageState();
}

class _InnafatahnaPageState extends State<InnafatahnaPage> {
  // Nama file gambar di assets/images
  List<String> imageNames = [
    's1.png',
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
          mainAxisAlignment: MainAxisAlignment.end, // Set this to end
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Yarobbi()),
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
