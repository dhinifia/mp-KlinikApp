import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliItem extends StatelessWidget {
  final Poli poli;

  const PoliItem({Key? key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.namaPoli}"), // Menampilkan nama poli
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Pindah ke halaman PoliDetail dengan mengirim objek Poli
        );
      },
    );
  }
}
