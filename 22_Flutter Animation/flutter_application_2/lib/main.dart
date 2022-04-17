import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/kontak.dart';
import 'package:flutter_application_1/tambah_kontak.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => Kontak(),
      )
    ], child: const MyApp()),
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
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<Kontak>(context);
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
                  'Nama: ${state.kontaks[index].nama}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Nomr: ${state.kontaks[index].nomor}',
                  style: const TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  child: Text(
                    'Nama: ${state.kontaks[index].nama}',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            );
          },
          itemCount: state.kontaks.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const TambahKontak();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween =
                    Tween(begin: const Offset(0, 5), end: Offset.zero);
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
