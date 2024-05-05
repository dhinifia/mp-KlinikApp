import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter
import '../widget/sidebar.dart'; // Mengimpor file sidebar.dart yang berisi kode untuk sidebar

class Beranda extends StatelessWidget {
  const Beranda({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), // Menambahkan sidebar pada halaman Beranda
      appBar: AppBar(
          title: Text("Beranda")), // Menampilkan judul "Beranda" pada AppBar
      body: Center(
        child: Text(
            "Selamat Datang"), // Menampilkan teks "Selamat Datang" di tengah layar
      ),
    );
  }
}
