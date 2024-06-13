import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '/model/pegawai.dart'; // Mengimpor file pegawai.dart dari direktori model.
import 'pegawai_detail.dart'; // Mengimpor file pegawai_detail.dart.

class PegawaiItem extends StatelessWidget {
  final Pegawai
      pegawai; // Mendeklarasikan variabel pegawai dengan tipe Pegawai.

  const PegawaiItem(
      {super.key,
      required this.pegawai}); // Konstruktor yang menerima parameter key dengan tipe dynamic dan pegawai dengan tipe Pegawai yang wajib diisi.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(
              "${pegawai.nama}"), // Menampilkan nilai dari pegawai.nama pada judul ListTile.
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PegawaiDetail(
                pegawai:
                    pegawai), // Membuka halaman PegawaiDetail dengan mengirimkan data pegawai.
          ),
        );
      },
    );
  }
}
