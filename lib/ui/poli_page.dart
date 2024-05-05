import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter
import '../widget/sidebar.dart'; // Mengimpor file sidebar.dart yang berisi kode untuk sidebar
import '../model/poli.dart'; // Mengimpor file poli.dart yang berisi definisi model Poli
import 'poli_detail.dart'; // Mengimpor file poli_detail.dart
import 'poli_item.dart'; // Mengimpor file poli_item.dart
import 'poli_form.dart'; // Mengimpor file poli_form.dart

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), // Menambahkan sidebar pada halaman PoliPage
      appBar: AppBar(
        title: const Text(
            "Data Poli"), // Menampilkan judul "Data Poli" pada AppBar
        actions: [
          GestureDetector(
            child: const Icon(Icons.add), // Menampilkan ikon tambah pada AppBar
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PoliForm()), // Pindah ke halaman PoliForm saat ikon tambah ditekan
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Anak")), // Menampilkan item Poli dengan nama "Poli Anak"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Kandungan")), // Menampilkan item Poli dengan nama "Poli Kandungan"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Gigi")), // Menampilkan item Poli dengan nama "Poli Gigi"
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli THT")), // Menampilkan item Poli dengan nama "Poli THT"
        ],
      ),
    );
  }
}
