// import 'dart:io';

// void main(List<String> args) async {
//   List<int> nilai = [];
//   int? value = 0;
//   do {
//     value = int.tryParse(stdin.readLineSync() ?? '');
//     nilai.add(value ?? 0);
//   } while (value != null);
//   raisal(nilai, 4);
// }

// void raisal(List<int> nilai, int pengali) {
//   for (var i = 0; i < nilai.length; i++) {
//     nilai[i] *= pengali;
//     print(nilai[i]);
//   }
// }

void main(List<String> args) async {
  List<List<String>> katasandi = [
    ['raisal', 'fani'],
    [
      'raisal1234',
      'fani5678',
    ]
  ];
  var katasandiMap = {};
  for (var item in katasandi) {
    katasandiMap[item.first] = item.last;
  }
  print(katasandiMap);
}
