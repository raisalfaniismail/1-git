import 'dart:io';

void main(List<String> args) {
  var nilai = 50;
  //nilanya
  if (nilai > 70) {
    print('return A');
    //Bila nilainya besar dari 70 hasilnya 'return A'
  } else if (nilai > 40) {
    print('return B');
    //Bila nilainya besar dari 40 hasilnya 'return B'
  } else if (nilai > 0) {
    print('');
    //Bila nilainya besar dari 0 hasilnya 'kosong'
  }
}
