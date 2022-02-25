// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';

void main() {
  print('progres sederhana menghitung luas lingkaran');
  const phi = 3.14;
  var jari;
  stdout.write('masukkan panjang jari-jari lingkaran : ');
  jari = stdin.readLineSync();
  double hasiljari = double.parse(jari);
  double luas = phi * hasiljari * hasiljari;
  print('Luas Lingkaran adalah $luas');
}
