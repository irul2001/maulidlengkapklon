import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_alazab/alhamdulillah.dart';
import 'package:maulidlengkapklon/pages_alazab/doa.dart';
import 'package:maulidlengkapklon/pages_alazab/fahuwa.dart';
import 'package:maulidlengkapklon/pages_alazab/hadawalamma.dart';
import 'package:maulidlengkapklon/pages_alazab/ilam.dart';

class AlAzabPage extends StatelessWidget {
  const AlAzabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Al-Azab',
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
              context, '1', 'Alhamdulillahilladzi', const Alhamdulillah()),
          _buildListTile(context, '2', 'I\'ilam Biannallah', const Ilam()),
          _buildListTile(
              context, '3', 'Fahuwa Nabiyyu Muhammad', const Fahuwa()),
          _buildListTile(context, '4', 'Hada Walamma', const Hadawalamma()),
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
