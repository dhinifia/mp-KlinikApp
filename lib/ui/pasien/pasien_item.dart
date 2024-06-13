import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '/model/pasien.dart'; // Mengimpor file pasien.dart dari direktori model.
import 'pasien_detail.dart'; // Mengimpor file pasien_detail.dart.

class PasienItem extends StatelessWidget {
  final Pasien pasien; // Mendeklarasikan variabel pasien dengan tipe Pasien.
  const PasienItem(
      {super.key,
      required this.pasien}); // Konstruktor yang menerima parameter key dengan tipe dynamic dan pasien dengan tipe Pasien yang wajib diisi.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${pasien.nama}"), // Menampilkan nilai dari pasien.nama.
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PasienDetail(
                    pasien:
                        pasien))); // Melakukan navigasi ke halaman PasienDetail dengan membawa data pasien.
      },
    );
  }
}
