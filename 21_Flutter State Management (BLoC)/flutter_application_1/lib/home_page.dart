import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/kontak_bloc.dart';
import 'package:flutter_application_1/tambah_kontak.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
      ),
      body: BlocBuilder<KontakBloc, KontakState>(builder: (context, state) {
        if (state is KontakLoading) {
          return const CircularProgressIndicator();
        }
        if (state is KontakLoaded) {
          return ListView.builder(
            itemCount: state.kontak.length,
            itemBuilder: (context, int index) {
              return Card(
                child: ListTile(
                  trailing: InkWell(
                    onTap: () {
                      context
                          .read<KontakBloc>()
                          .add(DeleteKontak(kontak: state.kontak[index]));
                    },
                    child: const Icon(Icons.delete_forever, color: Colors.red),
                  ),
                  title: Text(
                    state.kontak[index].nama,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    state.kontak[index].nomor,
                    style: const TextStyle(fontSize: 15),
                  ),
                  leading: CircleAvatar(
                    child: Text(
                      state.kontak[index].nama,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          const Text('Tidak Sesuai');
        }
        return Container();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TambahKontak()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
