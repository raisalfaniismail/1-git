import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Galery';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Image.network(
                'https://i.picsum.photos/id/199/2592/1728.jpg?hmac=qOzjPDUZT5vWXyaHaaTo602LZZdZgyQtSfa8KB3uTDs'),
            Image.network(
                'https://i.picsum.photos/id/218/4752/3168.jpg?hmac=Orn41GOM38rjA-HLzG_hpWi1sfLgnsAAvpiB-uwjvf0'),
            Image.network(
                'https://i.picsum.photos/id/271/4608/3072.jpg?hmac=KDcl52N6YZhhEOtJw5_z2H8Cc6I209G5w97Y7gn-Ks4'),
          ],
        ),
        onPressed: () {
          Scaffold.of(context).showBottomSheet<void>(
            (BuildContext context) {
              return GridView.count(
                crossAxisCount: 3,
                children: [
                  Image.network(
                      'https://i.picsum.photos/id/199/2592/1728.jpg?hmac=qOzjPDUZT5vWXyaHaaTo602LZZdZgyQtSfa8KB3uTDs'),
                  ElevatedButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                ],
              );
            },
          );
        },
      ),
    );
  }
}
