import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_addibai/alhamdulillahqowi.dart';
import 'package:maulidlengkapklon/pages_addibai/doa.dart';
import 'package:maulidlengkapklon/pages_addibai/innafatahna.dart';
import 'package:maulidlengkapklon/pages_addibai/yarobbi.dart';
import 'package:maulidlengkapklon/pages_addibai/yarosulallah.dart';

class MaulidAdDibaiPage extends StatelessWidget {
  const MaulidAdDibaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simtudduror',
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
          _buildListTile(context, '1', 'Yarobbi Sholi', const Yarobbi()),
          _buildListTile(context, '2', 'Innafatahna', const Innafatahna()),
          _buildListTile(context, '3', 'Ya Rosulullah', const Yarosulallah()),
          _buildListTile(
              context, '4', 'Alhamdulillahil Qowi', const Alhamdulillahqowi()),
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
