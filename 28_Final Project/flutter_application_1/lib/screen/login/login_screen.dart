
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    }
  }

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: ListView(
        children: [
          buildLogo(context),
          const SizedBox(
            height: 20,
          ),
          buildForm(context)
        ],
      ),
    );
  }

  Widget buildLogo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Colors.lightBlue.shade900,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: Center(
              child: Image.asset('assets/images/logo.jpg'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Hi Commers, Silahkan Masuk'),
        ],
      ),
    );
  }

  Widget buildForm(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextFormField(
              controller: _namaController,
              decoration: InputDecoration(
                hintText: "Masukan Nama",
                icon: const Icon(Icons.account_circle_rounded),
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Masukan Email",
                labelText: 'Email',
                icon: const Icon(Icons.email_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              // validator: (email) {
              //   if (email != null && !EmailValidator.validate(email)) {
              //     return 'Enter a valid email';
              //   } else {
              //     return null;
              //   }
              // },
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukan Password",
                labelText: 'Password',
                icon: const Icon(Icons.password_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              validator: (value) {
                if (value != null && value.length < 5) {
                  return 'Enter min. 5 characters';
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                final isValidForm = formKey.currentState!.validate();
                String username = _namaController.text;
                if (isValidForm) {
                  logindata.setBool('login', false);
                  logindata.setString('username', username);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (route) => false);
                }
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
