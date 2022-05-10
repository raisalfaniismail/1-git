import 'package:flutter/material.dart';

class PentingScreen extends StatefulWidget {
  const PentingScreen({Key? key}) : super(key: key);

  @override
  State<PentingScreen> createState() => _PentingScreenState();
}

class _PentingScreenState extends State<PentingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penting'),
      ),
    );
  }
}
