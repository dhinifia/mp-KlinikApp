import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter
import 'ui/beranda.dart'; // Mengimpor file beranda.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menyembunyikan banner debug pada aplikasi
      title: 'Klinik', // Menetapkan judul aplikasi
      home: Beranda(), // Mengatur Beranda sebagai halaman utama aplikasi
    );
  }
}
