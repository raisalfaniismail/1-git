import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/tambah_kontak.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kontak',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _namaController = TextEditingController();
  final _nomorController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  'Nama: ${_namaController.text}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Nomor: ${_nomorController.text}',
                  style: const TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'Nama: ${_namaController.text}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
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
