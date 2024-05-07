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

  @override
  void initState() {
    widget.store.dispatch(GetImageLabelsStart(imagePath: widget.store.state.picture!.path));
    super.initState();
  }

  @override
  void dispose() {
    //widget.store.dispatch(const SetPictureToNull());
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
          if (pending.contains(GetImageLabels.pendingKey) || pending.contains(TakePicture.pendingKey) || widget.store.state.picture == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: <Widget>[
              Center(
                child: Image.file(File(
                  widget.store.state.picture!.path,
                ),),
              ),
              Text('CEVA'),
              Text(widget.store.state.imageLabel),
            ],
          );
        },
      ),
    );
  }
}
