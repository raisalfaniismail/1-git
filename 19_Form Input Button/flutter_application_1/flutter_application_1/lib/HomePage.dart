import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
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
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TambahKontak()));
              },
              icon: Icon(Icons.add)),
        ],
        title: const Text('Kontak Telepon'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                Nama[index],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                Nomor[index],
                style: const TextStyle(fontSize: 15),
              ),
              leading: CircleAvatar(
                child: Text(
                  Nama[index][0],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TambahKontak extends StatefulWidget {
  TambahKontak({Key? key}) : super(key: key);

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Kontak'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nama",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
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
    );
  }
}
