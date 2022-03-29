import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeListView(),
    );
  }
}

class HomeListView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List Nama = [
    "Asep",
    "Udin",
    "Jamal",
    "Siti",
    "Asep",
    "Udin",
    "Jamal",
    "Siti",
    "Asep",
    "Udin",
    "Jamal",
    "Siti",
    "Asep",
    "Udin",
    "Jamal",
    "Siti",
  ];

  // ignore: non_constant_identifier_names
  final List Nomor = [
    "081288888888",
    "089577777777",
    "088855555555",
    "089922222222",
    "081288888888",
    "089577777777",
    "088855555555",
    "089922222222",
    "081288888888",
    "089577777777",
    "088855555555",
    "089922222222",
    "081288888888",
    "089577777777",
    "088855555555",
    "089922222222",
  ];

  HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak Telepon'),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(Nama[index], style: const TextStyle(fontSize: 20)),
              subtitle:
                  Text(Nomor[index], style: const TextStyle(fontSize: 15)),
              leading: CircleAvatar(
                  child: Text(
                Nama[index][0],
                style: const TextStyle(fontSize: 20),
              )),
            ),
          );
        },
        itemCount: Nama.length,
      ),
    );
  }
}
