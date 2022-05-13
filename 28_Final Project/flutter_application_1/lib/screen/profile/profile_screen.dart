import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login/login_state_model.dart';
import 'package:flutter_application_1/screen/login/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          buildCirleAvatar(context),
          const SizedBox(
            height: 10,
          ),
          // buildLoginViewModel(context),
          const SizedBox(
            height: 20,
          ),
          Text(username),
          IconButton(
            onPressed: () {
              logindata.setBool('login', true);
              logindata.remove('username');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }

  Widget buildCirleAvatar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(child: Icon(Icons.account_circle_rounded))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
  //     Provider.of<LoginStateModel>(context, listen: false).getAllLogins();
  //   });
  // }

  // Widget buildLoginViewModel(BuildContext context) {
  //   final stateView = Provider.of<LoginStateModel>(context);
  //   return ListView.builder(
  //     itemCount: stateView.logins.length,
  //     itemBuilder: (context, index) {
  //       final login = stateView.logins[index];
  //       return ListTile(
  //         title: Text(login.username),
  //         subtitle: Text(login.email),
  //       );
  //     },
  //   );
  // }
}
