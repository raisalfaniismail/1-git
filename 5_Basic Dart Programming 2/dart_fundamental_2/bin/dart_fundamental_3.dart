// void main(List<String> arguments) {
//   print('Hello world!');
// }

import 'dart:io';

void main(List<String> args) async {
  List<int> nilai = [];
  int? value = 0;
  do {
    value = int.tryParse(stdin.readLineSync() ?? '');
    nilai.add(value ?? 0);
  } while (value != null);
  raisal(nilai, 4);
}

void raisal(List<int> nilai, int pengali) {
  for (var i = 0; i < nilai.length; i++) {
    nilai[i] *= pengali;
    print(nilai[i]);
  }
}
