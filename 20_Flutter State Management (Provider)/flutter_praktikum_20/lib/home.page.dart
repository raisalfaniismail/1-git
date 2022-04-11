import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_praktikum_20/store/kontak.dart' as kontak_store;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String nama = '';
  String nomor = '';
  var namaController = TextEditingController();
  var nomorController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    namaController.dispose();
    nomorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final kontakProvider = Provider.of<kontak_store.Kontak>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextField(
              controller: namaController,
              onChanged: (String value) {
                nama = value;
              },
            ),
            TextField(
              controller: namaController,
              onChanged: (String value) {
                nomor = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (!formKey.currentState!.validate()) return;

                formKey.currentState!.save();

                kontakProvider.add(
                  GetKontak(nama: nama, nomor: nomor),
                );
              },
              child: const Text('Add Nomor'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kontakProvider.kontak.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(kontakProvider.kontak[index].nama),
                    subtitle: Text(kontakProvider.kontak[index].nomor),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
