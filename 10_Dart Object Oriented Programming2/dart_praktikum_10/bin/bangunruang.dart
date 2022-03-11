abstract class BangunRuang {
  int panjang = 20;
  int lebar = 10;
  int tinggi = 8;

  volume() {}
}

class Kubus extends BangunRuang {
  int sisi = 12;
  @override
  volume() {
    return sisi * 3;
  }
}

class Balok extends BangunRuang {
  @override
  volume() {
    return panjang * lebar * tinggi;
  }
}
