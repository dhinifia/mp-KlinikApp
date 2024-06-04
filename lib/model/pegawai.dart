class Pegawai {
  late int id;
  late String nip;
  late String nama;
  late String tgllahir;
  late String nmrtlp;
  late String email;
  late String password;

  Pegawai(Map pegawai) {
    id = pegawai['id'];
    nip = pegawai['nip'];
    nama = pegawai['nama'];
    tgllahir = pegawai['tgllahir'];
    nmrtlp = pegawai['nmrtlp'];
    email = pegawai['email'];
    password = pegawai['password'];
  }
}
