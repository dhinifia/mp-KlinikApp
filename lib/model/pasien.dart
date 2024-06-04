class Pasien {
  late int id;
  late String nama;
  late String noRm;
  late String tgllahir;
  late String nmrtlp;
  late String alamat;

  Pasien(Map pasien) {
    id = pasien['id'];
    nama = pasien['nama'];
    noRm = pasien['noRm'];
    tgllahir = pasien['tgllahir'];
    nmrtlp = pasien['nmrtlp'];
    alamat = pasien['alamat'];
  }
}
