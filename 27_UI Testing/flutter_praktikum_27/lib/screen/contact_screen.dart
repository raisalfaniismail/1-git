import 'package:flutter/material.dart';
import 'package:flutter_praktikum_20/screen/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContact();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontak'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView.builder(
          itemCount: modelView.contacts.length,
          itemBuilder: (context, index) {
            final contact = modelView.contacts[index];
            return Card(
              child: ListTile(
                title: Text(
                  contact.nama,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  contact.nomor,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
