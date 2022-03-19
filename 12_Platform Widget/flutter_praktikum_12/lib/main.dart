import 'package:flutter/material.dart';
import 'package:flutter_praktikum_12/pages/telegram_home.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return newMethod();
  }

  MaterialApp newMethod() {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Telegramhome(),
    title: "telegram",
    theme: ThemeData(
      primaryColor: Color(0xFF1976d2),
      accentColor: Color.fromARGB(255, 252, 254, 255)
      )
    );
  }
}

