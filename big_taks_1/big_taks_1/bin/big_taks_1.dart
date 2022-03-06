import 'dart:io';

void main() {
  cekAngka();
}

void cekAngka() {
  stdout.write("Masukan Angka : ");
  String? angka = stdin.readLineSync();
  var hasil = int.parse(angka!);

  if (hasil.isOdd) {
    print(" $hasil false");
  } else if (hasil.isEven) {
    print(" $hasil true");
  }
}

// import 'dart:io';

// void main() {
//   print("Masukkan azimunth : ");
//   int? n = int.parse(stdin.readLineSync()!);

//   if (n > 180) {
//     for (int i = 180; i <= n; i -= 180);
//   }
//   if (n < 180) {
//     for (int i = 180; i >= n; i += 180);
//   }
//   if (n <= 0) {
//     for (int i = 0; i <= n; i == 0);
//   }
//   if (n <= 360) {
//     for (int i = 360; i >= n; i == 0);
//   }
//   print(n);
// }
