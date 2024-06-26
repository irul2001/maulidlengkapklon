import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_albarzanji/abtadiul.dart';
import 'package:maulidlengkapklon/pages_albarzanji/doa.dart';
import 'package:maulidlengkapklon/pages_albarzanji/wabadu.dart';
import 'package:maulidlengkapklon/pages_albarzanji/walmma.dart';
import 'package:maulidlengkapklon/pages_albarzanji/yarobbi.dart';

// ignore: use_key_in_widget_constructors
class AlbarzanjiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Al-Barzanji',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
      ),
      body: ListView(
        children: [
          _buildListTile(context, '1', 'Yarobbi Sholli', const Yarobbi()),
          _buildListTile(context, '2', 'Abtadiul Imla', Abtadiul()),
          _buildListTile(context, '3', 'Wa Ba\'du Fa\'aqulu', const Wabadu()),
          _buildListTile(context, '4', 'Walamma Arodallah', const Walmma()),
          _buildListTile(context, '5', 'Doa', const Doa()),
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
            child: Text(number, style: const TextStyle(color: Colors.white)),
          ),
          title: Text(title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0), // Padding untuk Divider
          child: Divider(
            color: Colors.black
                .withOpacity(0.5), // Garis bawah yang transparan berwarna hitam
          ),
        ),
      ],
    );
  }
}
