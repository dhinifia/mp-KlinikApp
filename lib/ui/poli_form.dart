import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>(); // Kunci form untuk validasi
  final _namaPoliCtrl = TextEditingController(); // Controller untuk TextField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")), // Judul halaman
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menghubungkan kunci form dengan Form widget
          child: Column(
            children: [
              _fieldNamaPoli(), // Memanggil method untuk menampilkan TextField
              SizedBox(height: 20), // Spasi vertical antara elemen
              _tombolSimpan(), // Memanggil method untuk menampilkan ElevatedButton
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nama Poli"), // Label untuk TextField
      controller: _namaPoliCtrl, // Menghubungkan controller dengan TextField
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poli poli = new Poli(
            namaPoli: _namaPoliCtrl
                .text); // Membuat objek Poli dengan menggunakan nilai dari TextField
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Pindah ke halaman PoliDetail dengan mengirim objek Poli
        );
      },
      child: const Text("Simpan"), // Teks yang ditampilkan pada tombol
    );
  }
}
