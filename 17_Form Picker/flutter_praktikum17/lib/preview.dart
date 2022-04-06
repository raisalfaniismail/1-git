import 'dart:io';
import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  var picture;
  Color colors;
  String caption;
  DateTime datePost;

  Preview({
    Key? key,
    required this.picture,
    required this.colors,
    required this.caption,
    required this.datePost,
  }) : super(key: key);

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Priview'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
            child: Image.file(
              File(widget.picture),
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Published: ${widget.datePost}',
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const Text(
                'Color: ',
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                height: 20,
                width: 20,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: widget.colors),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              widget.caption,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
