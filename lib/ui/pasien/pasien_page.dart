import 'package:flutter/material.dart';
import '/model/data.dart';
import '/model/pasien.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Data Pasien"), // Menampilkan judul "Data Pasien" pada AppBar
        actions: [
          GestureDetector(
            child: const Icon(Icons.add), // Menampilkan ikon "add" pada AppBar
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienForm())); // Menggunakan Navigator untuk berpindah ke halaman PasienForm saat ikon di-tap
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Map i in pasien) PasienItem(pasien: Pasien(i))
        ], // Menggunakan loop for untuk menampilkan daftar PasienItem berdasarkan data pasien yang ada
      ),
    );
  }
}
