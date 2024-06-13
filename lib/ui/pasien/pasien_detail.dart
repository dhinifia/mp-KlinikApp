import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '/model/pasien.dart'; // Mengimpor file pasien.dart dari direktori model.

class PasienDetail extends StatefulWidget {
  final Pasien pasien; // Mendeklarasikan variabel pasien dengan tipe Pasien.

  const PasienDetail(
      {super.key,
      required this.pasien}); // Konstruktor yang menerima parameter key dengan tipe dynamic dan pasien dengan tipe Pasien yang wajib diisi.

  @override
  State<PasienDetail> createState() =>
      _PasienDetailState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _PasienDetailState.
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Detail Pasien"), // Menampilkan judul "Detail Pasien" pada AppBar.
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 50),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nama'),
                  Text('No Rekam Medis'),
                  Text('Tanggal Lahir'),
                  Text('Nomor Telepon'),
                  Text('Alamat'),
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
                  Text("${widget.pasien.nama}"),
                  Text("${widget.pasien.noRm}"),
                  Text("${widget.pasien.tgllahir}"),
                  Text("${widget.pasien.nmrtlp}"),
                  Text("${widget.pasien.alamat}"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
