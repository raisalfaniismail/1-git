// void main(List<String> arguments) {
//   print('Hello world!');
// }

void main(List<String> arguments) {
  Mobil mobil = Mobil();
  for (var i = 0; i < 20; i++) {
    mobil.tambahMuatan();
  }
  print(mobil.muatan.length);
}

class Hewan {
//Class
  String name = '';
  int beratBadanHewan = 100;
//Properti
}

class Mobil {
  List<Hewan> muatan = [];
  void tambahMuatan() {
    int totalBeratBadan = 0;
    int kapasitas = 1000;
    for (var i = 0; i < muatan.length; i++) {
      totalBeratBadan += muatan[i].beratBadanHewan;
    }
    if (kapasitas > totalBeratBadan) {
      muatan.add(Hewan());
      //Mathod
    }
  }
}
