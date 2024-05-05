import 'dart:io';

import 'package:flutter/material.dart';

class ImageViewPage extends StatefulWidget {
  const ImageViewPage({super.key, required this.imagePath});
  final String imagePath;

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Captured Image'),
      ),
      body: Center(
        child: Image.file(File(widget.imagePath)),
      ),
    );
  }
}