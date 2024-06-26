// ignore_for_file: unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:maulidlengkapklon/main.dart';
import 'package:maulidlengkapklon/pages_simtuduror/innafatahna_page.dart';
import 'package:maulidlengkapklon/pages_simtuduror/yarobbi.dart';
import 'package:maulidlengkapklon/pages_simtuduror/alhamdulillah.dart';
import 'package:maulidlengkapklon/pages_simtuduror/ammabadu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/doa.dart';
import 'package:maulidlengkapklon/pages_simtuduror/fahina.dart';
import 'package:maulidlengkapklon/pages_simtuduror/fanasa.dart';
import 'package:maulidlengkapklon/pages_simtuduror/mahalulqiam.dart';
import 'package:maulidlengkapklon/pages_simtuduror/tajalal.dart';
import 'package:maulidlengkapklon/pages_simtuduror/tsumainhu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/tsummainnahu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/waashadu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/wahinabaroza.dart';
import 'package:maulidlengkapklon/pages_simtuduror/wakhaitsu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/walaqodit.dart';
import 'package:maulidlengkapklon/pages_simtuduror/waminasyarofi.dart';
import 'package:maulidlengkapklon/pages_simtuduror/wamundzu.dart';
import 'package:maulidlengkapklon/pages_simtuduror/waqodana.dart';

class SimtuddurorPage extends StatelessWidget {
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
          _buildListTile(context, '1', 'Innafatahna', const InnafatahnaPage()),
          _buildListTile(context, '2', 'Ya Robbi Sholli', Yarobbi()),
          _buildListTile(context, '3', 'Alhamdulillahi', Alhamdulillah()),
          _buildListTile(context, '4', 'Tajallal Haqu', Tajalal()),
          _buildListTile(context, '5', 'Wa Ashadu', Waashadu()),
          _buildListTile(context, '6', 'Amma Badu', Ammabadu()),
          _buildListTile(context, '7', 'Wa Qod Aana', Waqodana()),
          _buildListTile(context, '8', 'Wa Mundzu', Wamundzu()),
          _buildListTile(context, '9', 'Tajallal Haqu', Tajalal()),
          _buildListTile(context, '10', 'Mahalul Qiyam', Mahalulqiam()),
          _buildListTile(context, '11', 'Wahina Baraza', Wahinabaroza()),
          _buildListTile(
              context, '12', 'Tsumma Innahu Shallallah', Tsumainhu()),
          _buildListTile(context, '13', 'Fanasaa', Fanasa()),
          _buildListTile(context, '14', 'Tsumma Innahu Badama', Tsummainnahu()),
          _buildListTile(context, '15', 'Waminasyarofi', Waminasyarofi()),
          _buildListTile(context, '16', 'Wa Khaitsu Tasarrofatil', Wakhaitsu()),
          _buildListTile(context, '17', 'Wa Laqodit Tasarofa', Walaqodit()),
          _buildListTile(context, '18', 'Doa', const Doa()),
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
