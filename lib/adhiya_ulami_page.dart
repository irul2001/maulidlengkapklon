import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/alhamdulillah.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/doa.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/innafatahna.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/muqodimah.dart';
import 'package:maulidlengkapklon/pages_adhiyaulami/yarobbi.dart';

class AdhiyaUlamiPage extends StatelessWidget {
  const AdhiyaUlamiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adhiya Ulami',
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
          _buildListTile(context, '1', 'Yarobbi Sholli', const Muqodimah()),
          _buildListTile(context, '2', 'Abtadiul Imla', const Yarobbi()),
          _buildListTile(
              context, '3', 'Wa Ba\'du Fa\'aqulu', const Innafatahna()),
          _buildListTile(
              context, '4', 'Walamma Arodallah', const Alhamdulillah()),
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
