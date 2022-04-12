import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode'),
      ),
      body: Center(
        child: BarcodeWidget(
          width: 100,
          height: 100,
          barcode: Barcode.qrCode(),
          data: 'Hello /n Alterra Academic /n Raisal Fani Isamil',
          errorBuilder: (context, error) => Center(child: Text(error)),
        ),
      ),
    );
  }
}
// BarcodeWidget(
//   barcode: Barcode.ean13(),
//   data: 'Hello',
//   errorBuilder: (context, error) => Center(child: Text(error)),
// );