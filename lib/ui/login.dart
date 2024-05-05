import 'package:flutter/material.dart'; // Mengimpor paket flutter/material.dart untuk menggunakan komponen UI dari Flutter

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey =
      GlobalKey<FormState>(); // Membuat GlobalKey untuk validasi form
  final _usernameCtrl =
      TextEditingController(); // Mengontrol input teks untuk username
  final _passwordCtrl =
      TextEditingController(); // Mengontrol input teks untuk password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight
                          .w500), // Menampilkan teks "Login Admin" dengan gaya tertentu
                ),
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey, // Menghubungkan GlobalKey dengan Form
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          _usernameTextField(), // Menampilkan input teks untuk username
                          SizedBox(height: 20),
                          _passwordTextField(), // Menampilkan input teks untuk password
                          SizedBox(height: 40),
                          _tombolLogin(), // Menampilkan tombol "Login"
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Username"), // Menampilkan label "Username" pada input teks
      controller:
          _usernameCtrl, // Menghubungkan TextEditingController dengan input teks
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText:
              "Password"), // Menampilkan label "Password" pada input teks
      obscureText:
          true, // Mengatur input teks menjadi tersembunyi (untuk password)
      controller:
          _passwordCtrl, // Menghubungkan TextEditingController dengan input teks
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"), // Menampilkan teks "Login" pada tombol
        onPressed:
            () {}, // Menambahkan aksi ketika tombol ditekan (belum diimplementasikan)
      ),
    );
  }
}
