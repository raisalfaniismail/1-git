import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/model.dart';

part 'kontak_event.dart';
part 'kontak_state.dart';

class KontakBloc extends Bloc<KontakEvent, KontakState> {
  KontakBloc() : super(KontakLoading()) {
    on<LoadKontak>(_onLoadKontak);
    on<AddKontak>(_onAddKontak);
    on<DeleteKontak>(_onDeleteKontak);
  }
  void _onLoadKontak(LoadKontak event, Emitter<KontakState> emit) {
    emit(KontakLoaded(kontak: event.kontak));
  }

  void _onAddKontak(AddKontak event, Emitter<KontakState> emit) {
    final state = this.state;
    if (state is KontakLoaded) {
      emit(KontakLoaded(kontak: List.from(state.kontak)..add(event.kontak)));
    }
  }

  void _onDeleteKontak(DeleteKontak event, Emitter<KontakState> emit) {
    final state = this.state;
    if (state is KontakLoaded) {
      List<Kontak> kontaks = state.kontak.where((kontak) {
        return kontak.nama != event.kontak.nama;
      }).toList();
      emit(KontakLoaded(kontak: kontaks));
    }
  }
}
