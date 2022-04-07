import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/kontak');
            },
            child: const Text('add'),
          ),
        ],
        title: const Text('Kontak Telepon'),
      ),
      body: ListView.builder(
        itemCount: 12,
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
  const TambahKontak({Key? key}) : super(key: key);

  @override
  State<TambahKontak> createState() => _TambahKontakState();
}

class _TambahKontakState extends State<TambahKontak> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Kontak'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nama",
                  icon: const Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nomor",
                  icon: const Icon(Icons.call),
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
