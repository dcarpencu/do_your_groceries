import 'package:flutter/material.dart';

class CreateListPage extends StatefulWidget {
  const CreateListPage({Key? key}) : super(key: key);

  @override
  State<CreateListPage> createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create a new list'),),
      body: Form(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _titleController,
              )
            ],
          )),
    );
  }
}
