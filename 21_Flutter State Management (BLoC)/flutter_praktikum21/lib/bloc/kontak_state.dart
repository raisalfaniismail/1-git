part of 'kontak_bloc.dart';

abstract class KontakState extends Equatable {
  const KontakState();

  @override
  List<Object> get props => [];
}

class KontakLoading extends KontakState {}

class KontakLoaded extends KontakState {
  final List<Kontak> kontak;
  const KontakLoaded({this.kontak = const <Kontak>[]});

  @override
  List<Object> get props => [kontak];
}
