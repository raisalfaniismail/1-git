import 'package:flutter/material.dart';

class TambahKontak extends StatefulWidget {
  const TambahKontak({Key? key}) : super(key: key);

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  final _namaController = TextEditingController();
  final _nomorController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _nomorController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              controller: _namaController,
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
              controller: _nomorController,
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
                (_) => Navigator.pop(context);
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
