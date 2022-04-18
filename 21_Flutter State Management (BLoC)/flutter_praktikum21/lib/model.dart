import 'package:equatable/equatable.dart';

class Kontak extends Equatable {
  String nama;
  String nomor;
  Kontak({
    required this.nama,
    required this.nomor,
  });
  @override
  List<Object?> get props => [nama, nomor]; 
  static List<Kontak> kontak = [
  ];
}
