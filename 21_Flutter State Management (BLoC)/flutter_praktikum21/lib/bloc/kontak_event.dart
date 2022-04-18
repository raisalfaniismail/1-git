part of 'kontak_bloc.dart';

abstract class KontakEvent extends Equatable {
  const KontakEvent();

  @override
  List<Object> get props => [];
}

class LoadKontak extends KontakEvent {
  final List<Kontak> kontak;
  const LoadKontak({this.kontak = const <Kontak>[]});

  @override
  List<Object> get props => [kontak];
}

class AddKontak extends KontakEvent {
  final Kontak kontak;
  const AddKontak({required this.kontak});
  @override
  List<Object> get props => [kontak];
}

class DeleteKontak extends KontakEvent {
  final Kontak kontak;
  const DeleteKontak({required this.kontak});
  @override
  List<Object> get props => [kontak];
}
