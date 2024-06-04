import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart untuk menggunakan widget-widget UI dari Flutter
import '../model/data.dart'; // Mengimpor model data.dart
import '../model/pasien.dart'; // Mengimpor model pasien.dart
import 'pasien_item.dart'; // Mengimpor pasien_item.dart
import 'pasien_form.dart'; // Mengimpor pasien_form.dart

class PasienPage extends StatefulWidget {
  const PasienPage({Key? key}) : super(key: key);

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PasienForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (Map<String, dynamic> i in pasien) PasienItem(pasien: Pasien(i)),
        ],
      ),
    );
  }
}
