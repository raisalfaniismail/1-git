// void main(List<String> arguments) {
//   print('Hello world!');
// }

import 'dart:io';

//untuk mengambil input dan mengeluarkan output dari console atau command line.
void main() {
  int faktorial = 1;
  print("Masukkan bilangan bulat : ");
  int? n = int.parse(stdin.readLineSync()!);
  //Variabel yang menampung hasil faktorial, dan menampung hasil input usr dari console.
  if (n < 0) {
    print("Angka yang dimasukkan bukan bilangan bulat");
  } else {
    //untuk mengecek apakah user lebih dari o, bila n kurang dari 0 maka dikeluarkan ouput gagal
    for (int i = 1; i <= n; i++) {
      faktorial *= i;
    }
    //looping
    print("Hasil faktorial dari " +
        n.toString() +
        " adalah " +
        faktorial.toString());
  }
  //ouput
}
