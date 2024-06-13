import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '/model/pegawai.dart'; // Mengimpor file pegawai.dart dari direktori model.

class PegawaiDetail extends StatefulWidget {
  final Pegawai
      pegawai; // Mendeklarasikan variabel pegawai dengan tipe Pegawai.

  const PegawaiDetail(
      {super.key,
      required this.pegawai}); // Konstruktor yang menerima parameter key dengan tipe dynamic dan pegawai dengan tipe Pegawai yang wajib diisi.

  @override
  State<PegawaiDetail> createState() =>
      _PegawaiDetailState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _PegawaiDetailState.
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "Detail Pegawai RS")), // Menampilkan judul "Detail Pegawai RS" pada AppBar.
      body: Column(
        children: [
          SizedBox(height: 50), // Membuat ruang kosong dengan tinggi 50.
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nama'),
                  Text('NIP'),
                  Text('Email'),
                  Text('Tanggal Lahir'),
                  Text('Nomor Telepon'),
                ],
              ),
              Column(
                children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${widget.pegawai.nama}"), // Menampilkan nilai dari widget.pegawai.nama.
                  Text(
                      "${widget.pegawai.nip}"), // Menampilkan nilai dari widget.pegawai.nip.
                  Text(
                      "${widget.pegawai.email}"), // Menampilkan nilai dari widget.pegawai.email.
                  Text(
                      "${widget.pegawai.tgllahir}"), // Menampilkan nilai dari widget.pegawai.tgllahir.
                  Text(
                      "${widget.pegawai.nmrtlp}"), // Menampilkan nilai dari widget.pegawai.nmrtlp.
                ],
              ),
            ],
          ),
          SizedBox(height: 50), // Membuat ruang kosong dengan tinggi 50.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green, // Mengatur warna latar belakang tombol menjadi hijau.
                ),
                child:
                    const Text("Ubah"), // Menampilkan teks "Ubah" pada tombol.
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .red, // Mengatur warna latar belakang tombol menjadi merah.
                ),
                child: const Text(
                    "Hapus"), // Menampilkan teks "Hapus" pada tombol.
              ),
            ],
          ),
        ],
      ),
    );
  }
}
