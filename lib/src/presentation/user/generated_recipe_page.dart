import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class GeneratedRecipePage extends StatefulWidget {
  const GeneratedRecipePage({super.key});

  @override
  State<GeneratedRecipePage> createState() => _GeneratedRecipePageState();
}

class _GeneratedRecipePageState extends State<GeneratedRecipePage> {
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context,listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reteta'),),
      body: PendingContainer(builder: (BuildContext context, Set<String> pending) {
        if (pending.contains(GenerateRecipeResponse.pendingKey)) {
          return const Center(child: CircularProgressIndicator(),);
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(store.state.generatorResponse!),
          ),
        );
      },),
    );
  }
}
