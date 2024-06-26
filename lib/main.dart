import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/simtuduror_page.dart';
import 'package:maulidlengkapklon/adhiya_ulami_page.dart';
import 'package:maulidlengkapklon/al_azab_page.dart';
import 'package:maulidlengkapklon/al_barzanji_page.dart';
import 'package:maulidlengkapklon/maulid_ad_dibai_page.dart';
import 'package:maulidlengkapklon/qoaidah_burdah_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maulid Lengkap',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'images/logo2.jpg',
              height: 37.8, // 1 cm in pixels (assuming 96 DPI screen density)
              width: 37.8, // 1 cm in pixels (assuming 96 DPI screen density)
            ),
            const SizedBox(width: 8),
            const Text('Maulid Lengkap', style: TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.star,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/logo1.jpg',
              fit: BoxFit.contain,
            ),
          ),
          _buildListTile(context, '1', 'Simtudduror', SimtuddurorPage()),
          _buildListTile(
              context, '2', 'Maulid Ad-Diba\'i', const MaulidAdDibaiPage()),
          _buildListTile(context, '3', 'Al-Barzanji', AlbarzanjiPage()),
          _buildListTile(context, '4', 'Adhiya Ulami', const AdhiyaUlamiPage()),
          _buildListTile(context, '5', 'Al-Azab', const AlAzabPage()),
          _buildListTile(
              context, '6', 'Qoaidah Burdah', const QoaidahBurdahPage()),
        ],
      ),
    );
  }

  Widget _buildListTile(
      BuildContext context, String number, String title, Widget page) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: Text(number),
          ),
          title: Text(title),
          trailing: const Icon(Icons.chevron_right), // Menambahkan ikon ">"
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0), // Memberikan padding horizontal untuk Divider
          child: Divider(
            color: Colors.black
                .withOpacity(0.5), // Garis bawah yang transparan berwarna hitam
          ),
        ),
      ],
    );
  }
}
