import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home/preview_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../penting/panting_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: (IconButton(
          onPressed: () {},
          icon: (const Icon(Icons.add)),
        )),
        title: const Text('IKom Berita 2.0'),
      ),
      body: ListView(
        children: [
          buildUsername(context),
          const SizedBox(
            height: 10,
          ),
          buildBerita(context),
          buildNavigatorBar(context),
        ],
      ),
    );
  }

  Widget buildUsername(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Hi Commers!'),
        ],
      ),
    );
  }

  Widget buildBerita(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            color: Colors.grey.shade200,
            height: 100,
            width: 100,
            child: const Text('image'),
          ),
          title: const Text('title'),
          subtitle: const Text('subtitel'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PreviewScreen()));
          },
        );
      },
    );
  }

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const PentingScreen(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  Widget buildNavigatorBar(BuildContext context) {
    return Row(
      children: [
        Center(
          child: _widgetOptions[_selectedIndex],
        ),
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stars_rounded),
              label: 'Penting',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
        ),
      ],
    );
  }
}
