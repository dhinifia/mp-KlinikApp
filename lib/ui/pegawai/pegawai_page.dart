import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart untuk menggunakan widget-widget UI dari Flutter
import '../widget/sidebar.dart';
import '../model/pegawai.dart'; // Mengimpor model data.dart
import 'pegawai_detail.dart'; // Mengimpor model pegawai.dart
import 'pegawai_item.dart'; // Mengimpor pegawai_item.dart
import 'pegawai_form.dart'; // Mengimpor pegawai_form.dart

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({Key? key}) : super(key: key);

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PegawaiForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Map<String, dynamic> i in pegawai)
            PegawaiItem(pegawai: Pegawai(i)),
        ],
      ),
    );
  }
}
