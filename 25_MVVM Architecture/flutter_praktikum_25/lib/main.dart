import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/screen/contact_screen.dart';
import 'package:flutter_praktikum_20/screen/contact_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactScreen(),
      ),
    ),
  );
}
