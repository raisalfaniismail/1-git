import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animasi'),
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
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              isBig = !isBig;
            });
          },
          child: AnimatedContainer(
            height: isBig ? 1000 : 100,
            width: isBig ? 1000 : 100,
            duration: const Duration(seconds: 1),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/gunung.jpg'),
              radius: 100,
            ),
          ),
        ),
      ),
    );
  }
}
