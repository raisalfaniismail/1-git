import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_praktikum_20/store/kontak.dart' as kontak_store;

void main() {
  runApp(
    MyApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => kontak_store.Kontak(),
          ),
        ],
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp(MultiProvider multiProvider, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kontak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
