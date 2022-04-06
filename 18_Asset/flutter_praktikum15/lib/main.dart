import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Foto Pantai'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
    required String title,
    required,
  }) : super(key: key);

  final List foto = [
    Image.network(
        'https://i.picsum.photos/id/199/2592/1728.jpg?hmac=qOzjPDUZT5vWXyaHaaTo602LZZdZgyQtSfa8KB3uTDs'),
    Image.network(
        'https://i.picsum.photos/id/218/4752/3168.jpg?hmac=Orn41GOM38rjA-HLzG_hpWi1sfLgnsAAvpiB-uwjvf0'),
    Image.network(
        'https://i.picsum.photos/id/271/4608/3072.jpg?hmac=KDcl52N6YZhhEOtJw5_z2H8Cc6I209G5w97Y7gn-Ks4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foto Pantai'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: foto.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Preview(
                      foto: '',
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class Preview extends StatelessWidget {
  final String foto;
  const Preview({Key? key, required this.foto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Image(
        image: NetworkImage(foto),
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
