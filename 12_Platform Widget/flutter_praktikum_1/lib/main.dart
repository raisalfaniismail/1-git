import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Telegram'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            Name.length,
            (index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(photos[0]),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                          height: 55,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Name[0],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      subtitles[0],
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider()
                      ],
                    )),
                  ],
                ))),
      )),
    );
  }
}

final Name = [
  "Mamat Somplak",
  "Sobat Ambyar",
  "Dosen Flutter",
];
final subtitles = [
  "Liat tugas dong?",
  "Siap meluncur",
  "Deadline besok",
];
final clock = [
  '18:10',
  '15:00',
  '20:45',
];
final photos = [
  'https://c.wallhere.com/photos/ca/2d/auto_usa_classic_texture_car_minnesota_vw_vintage-523678.jpg!d',
  'https://i.ytimg.com/vi/B1xlP8J4rPk/maxresdefault.jpg',
  'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png'
];
