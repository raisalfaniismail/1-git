import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_praktikum17/preview.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentDate = DateTime.now();
  String _dueDate = 'dd/mm/yyyy';

  Color _currentColor = Colors.green.shade600;
  final Color currentColor = Colors.green.shade600;

  final _captionController = TextEditingController();
  String _caption = '';
  @override
  void initState() {
    super.initState();
    _captionController.addListener(() {
      setState(() {
        _caption = _captionController.text;
      });
    });
  }

  @override
  void dispose() {
    _captionController.dispose();
    super.dispose();
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    final file = result.files.first;
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Picker'),
        backgroundColor: _currentColor,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            buildFilePicker(context),
            const SizedBox(height: 10),
            buildDatePicker(context),
            const SizedBox(height: 10),
            buildColorPicker(context),
            const SizedBox(height: 10),
            buildCaption(context),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Preview(
                      caption: _caption,
                      colors: currentColor,
                      datePost: currentDate,
                      picture: null,
                    ),
                  ),
                );
              },
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Publish at',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () async {
            final selectDate = await showDatePicker(
              context: context,
              initialDate: currentDate,
              firstDate: DateTime(1990),
              lastDate: DateTime(currentDate.year + 5),
            );
            setState(
              () {
                if (selectDate != null) {
                  _dueDate = DateFormat('dd/MM/yyyy').format(selectDate);
                }
              },
            );
          },
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              _dueDate,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: Wrap(
                      children: [
                        BlockPicker(
                          pickerColor: currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        )
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Simpan'),
                      )
                    ],
                  );
                },
              );
            },
            child: Container(
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCaption(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Caption',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _captionController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            helperText: 'Caption',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            child: const Text('Cover'),
          ),
        ),
      ],
    );
  }
}
