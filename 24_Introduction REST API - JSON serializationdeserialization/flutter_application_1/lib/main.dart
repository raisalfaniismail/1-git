import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact_person.dart';
import 'package:flutter_application_1/model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Contact(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 50,
              child: ListTile(
                title: Text(
                  'Nama: ${state.contacts[index].nama}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Nomor: ${state.contacts[index].nomor}',
                  style: const TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'Nama: ${state.contacts[index].nama}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
          itemCount: state.contacts.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreateContact()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  GetContact getContact = GetContact(nama: '', nomor: '');
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
              onChanged: (value) {
                getContact.nama = value;
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
                getContact.nomor = value;
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
              onPressed: () async {
                {
                  Response response;
                  var dio = Dio();
                  var dataContact = {
                    'nama': getContact.nama,
                    'nomor': getContact.nomor
                  };
                  var dataMap = jsonEncode(dataContact);
                  response = await dio.post(
                      'http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/',
                      data: dataMap);
                }
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
