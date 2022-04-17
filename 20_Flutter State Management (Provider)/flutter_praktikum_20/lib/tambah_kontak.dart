import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/model.dart';
import 'package:flutter_praktikum_20/store/kontak.dart';
import 'package:provider/provider.dart';

class TambahKontak extends StatefulWidget {
  const TambahKontak({Key? key}) : super(key: key);

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  GetKontak getKontak = GetKontak(nama: '', nomor: '');
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<Kontak>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kontaks'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                getKontak.nama = value;
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
            TextFormField(
              onChanged: (value) {
                getKontak.nomor = value;
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
                state.add(GetKontak(nama: '', nomor: ''));
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
    );
  }
}
