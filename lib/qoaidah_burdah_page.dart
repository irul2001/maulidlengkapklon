import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslulawal.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslurrobi.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslussalis.dart';
import 'package:maulidlengkapklon/pages_burdah/alfaslussani.dart';
import 'package:maulidlengkapklon/pages_burdah/doa.dart';

class QoaidahBurdahPage extends StatelessWidget {
  const QoaidahBurdahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Qosidah Burdah',
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
          _buildListTile(
              context, '1', 'Al-Fashlul Awwal - 1', const Alfaslulawal()),
          _buildListTile(
              context, '2', 'Al-Fashlus Tsani - 2', const Alfaslussani()),
          _buildListTile(
              context, '3', 'Al-Fashlul Tsalis - 3', const Alfaslussalis()),
          _buildListTile(context, '4', 'Al-Fashlur Robi\' - 4', Alfaslurrobi()),
          _buildListTile(context, '5', 'Al-Fashlul Asir - 10', const Doa()),
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
