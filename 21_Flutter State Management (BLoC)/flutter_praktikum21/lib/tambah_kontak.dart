import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/kontak_bloc.dart';
import 'package:flutter_application_1/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TambahKontak extends StatefulWidget {
  const TambahKontak({Key? key}) : super(key: key);

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  String nama = '';
  String nomor = '';
  var formKey = GlobalKey<FormState>();
  var namaController = TextEditingController();
  var nomorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kontaks'),
      ),
      body: BlocListener<KontakBloc, KontakState>(
        listener: (context, state) {
          if (state is KontakLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Berhasil ditambahkan')));
          }
        },
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextField(
                  controller: namaController,
                  onChanged: (String value) {
                    nama = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Nama",
                    icon: const Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: nomorController,
                  onChanged: (String value) {
                    nomor = value;
                  },
                  decoration: InputDecoration(
                    labelText: "Nomor",
                    icon: const Icon(Icons.people),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    var kontak = Kontak(nama: nama, nomor: nomor);
                    context.read<KontakBloc>().add(AddKontak(kontak: kontak));
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
