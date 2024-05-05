import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter
import '../ui/beranda.dart'; // Mengimpor file beranda.dart
import '../ui/login.dart'; // Mengimpor file login.dart
import '../ui/poli_page.dart'; // Mengimpor file poli_page.dart

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Admin"), // Menampilkan nama akun "Admin" di header drawer
            accountEmail: Text("admin@admin.com"), // Menampilkan email akun "admin@admin.com" di header drawer
          ),
          ListTile(
            leading: Icon(Icons.home), // Menampilkan ikon rumah pada ListTile
            title: Text("Beranda"), // Menampilkan teks "Beranda" pada ListTile
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beranda()), // Pindah ke halaman Beranda saat ListTile ditekan
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.accessible), // Menampilkan ikon aksesibilitas pada ListTile
            title: Text("Poli"), // Menampilkan teks "Poli" pada ListTile
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliPage()), // Pindah ke halaman PoliPage saat ListTile ditekan
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people), // Menampilkan ikon orang pada ListTile
            title: Text("Pegawai"), // Menampilkan teks "Pegawai" pada ListTile
            onTap: () {
              // Tambahkan aksi yang diinginkan saat ListTile ditekan
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_sharp), // Menampilkan ikon kotak akun pada ListTile
            title: Text("Pasien"), // Menampilkan teks "Pasien" pada ListTile
            onTap: () {
              // Tambahkan aksi yang diinginkan saat ListTile ditekan
            },
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded), // Menampilkan ikon logout pada ListTile
            title: Text("Keluar"), // Menampilkan teks "Keluar" pada ListTile
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()), // Pindah ke halaman Login dan hapus history navigasi
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}