// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslussalis.dart';
import 'package:maulidlengkapklon/pages_burdah/doa.dart';

import 'package:maulidlengkapklon/qoaidah_burdah_page.dart';

class Alfaslurrobi extends StatefulWidget {
  @override
  _AlfaslurrobiState createState() => _AlfaslurrobiState();
}

class _AlfaslurrobiState extends State<Alfaslurrobi> {
  // List URL gambar
  List<String> imageNames = [
    'Q4.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Al-Faslur Robi\' - 4'),
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
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Alfaslussalis()),
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
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
