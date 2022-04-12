import 'package:badges/badges.dart';
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
        title: const Text('Badges'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 200,
          ),
          child: Column(
            children: [
              const Chip(
                padding: EdgeInsets.all(10),
                label: Text(
                  'BADGE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Badge(
                toAnimate: false,
                shape: BadgeShape.square,
                badgeColor: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                badgeContent:
                    const Text('BADGE', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
