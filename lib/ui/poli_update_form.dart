import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter
import '../model/poli.dart'; // Mengimpor model Poli
import '/ui/poli_detail.dart'; // Mengimpor halaman PoliDetail

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli
          .namaPoli; // Mengatur nilai awal pada controller dengan nilai namaPoli dari objek Poli
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Ubah Poli")), // Menampilkan judul "Ubah Poli" pada AppBar
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPoli(), // Menampilkan input field untuk nama poli
              SizedBox(height: 20),
              _tombolSimpan(), // Menampilkan tombol "Simpan Perubahan"
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
          labelText: "Nama Poli"), // Menampilkan label "Nama Poli"
      controller: _namaPoliCtrl,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poli poli = new Poli(
            namaPoli: _namaPoliCtrl
                .text); // Membuat objek Poli dengan menggunakan nilai dari TextField
        Navigator.pop(context); // Kembali ke halaman sebelumnya
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Pindah ke halaman PoliDetail dengan mengirim objek Poli
        );
      },
      child: const Text(
          "Simpan Perubahan"), // Menampilkan teks "Simpan Perubahan" pada tombol
    );
  }
}
