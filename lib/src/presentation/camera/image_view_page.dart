import 'dart:io';

import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class ImageViewPage extends StatefulWidget {
  const ImageViewPage({required this.store, super.key});
  final Store<AppState> store;

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  bool isLoading = false;

  @override
  void dispose() {
    widget.store.dispatch(const SetPictureToNull());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Captured Image'),
      ),
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if (pending.contains(TakePicture.pendingKey) && widget.store.state.picture == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Center(
            child: Image.file(File(
              widget.store.state.picture!.path,
            )),
          );
        },
      ),
    );
  }
}
