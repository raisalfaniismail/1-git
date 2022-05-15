import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home/preview_screen.dart';
import 'package:flutter_application_1/screen/profile/profile_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _posts = [];
  @override
  void initState() {
    super.initState();
    _getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            );
          },
          icon: (const Icon(Icons.account_circle_rounded)),
        )),
        title: const Text(
          'IKom Berita 2.0',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Colors.grey.shade200,
              height: 100,
              width: 100,
              child: _posts[index]['urlToImage'] != null
                  ? Image.network(
                      _posts[index]['urlToImage'],
                      width: 100,
                      fit: BoxFit.cover,
                    )
                  : const Center(),
            ),
            title: Text(
              '${_posts[index]['title']}',
              maxLines: 2,
            ),
            subtitle: Text(
              '${_posts[index]['description']}',
              maxLines: 2,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PreviewScreen(
                    url: _posts[index]['url'],
                    title: _posts[index]['title'],
                    content: _posts[index]['content'],
                    publishedAt: _posts[index]['publishedAt'],
                    author: _posts[index]['autor'],
                    urlToImage: _posts[index]['urlToImage'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future _getNews() async {
    try {
      final response = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=id&apiKey=57980be453004f34be77198842d2485b'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          _posts = data['article'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
