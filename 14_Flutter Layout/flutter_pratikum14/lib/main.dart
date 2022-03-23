// import 'dart:ui';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeListView(),
//     );
//   }
// }

// class HomeListView extends StatelessWidget {
//   final List Nama = [
//     "Asep",
//     "Udin",
//     "Jamal",
//     "Siti",
//     "Asep",
//     "Udin",
//     "Jamal",
//     "Siti",
//     "Asep",
//     "Udin",
//     "Jamal",
//     "Siti",
//     "Asep",
//     "Udin",
//     "Jamal",
//     "Siti",
//   ];

//   final List Nomor = [
//     "081288888888",
//     "089577777777",
//     "088855555555",
//     "089922222222",
//     "081288888888",
//     "089577777777",
//     "088855555555",
//     "089922222222",
//     "081288888888",
//     "089577777777",
//     "088855555555",
//     "089922222222",
//     "081288888888",
//     "089577777777",
//     "088855555555",
//     "089922222222",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Kontak Telepon'),
//         centerTitle: false,
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               title: Text(Nama[index], style: TextStyle(fontSize: 20)),
//               subtitle: Text(Nomor[index], style: TextStyle(fontSize: 15)),
//               leading: CircleAvatar(
//                   child: Text(
//                 Nama[index][0],
//                 style: TextStyle(fontSize: 20),
//               )),
//             ),
//           );
//         },
//         itemCount: Nama.length,
//       ),
//     );
//   }
// }

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeGridView(),
    );
  }
}

class HomeGridView extends StatelessWidget {
  const HomeGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(12, (index) {
          return Container(
            child: Card(
              color: Colors.blue,
            ),
          );
        }),
      ),
    );
  }
}
