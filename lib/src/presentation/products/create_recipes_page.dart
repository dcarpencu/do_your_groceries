import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/filter_chip_enums.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/filterChipSelection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:redux/redux.dart';

class CreateRecipesPage extends StatefulWidget {
  const CreateRecipesPage({super.key});

  @override
  State<CreateRecipesPage> createState() => _CreateRecipesPageState();
}

class _CreateRecipesPageState extends State<CreateRecipesPage> {
  late Store<AppState> _store;
  late final GenerativeModel _model;

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode();

  @override
  void initState() {
    _store = StoreProvider.of<AppState>(context, listen: false);

    const String apiKey = String.fromEnvironment('API_KEY', defaultValue: 'key not found');
    if (apiKey == 'key not found') {
      throw InvalidApiKey(
        'Key not found in environment. Please add an API key.',
      );
    }

    _model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: 'AIzaSyBVuj79tA0VZPGZTPcpZD3Ljc-6Fxi5ptI',//const String.fromEnvironment(apiKey),
    );

    super.initState();
  }

  // void _scrollDown() {
  //   WidgetsBinding.instance.addPostFrameCallback(
  //         (_) => _scrollController.animateTo(
  //       _scrollController.position.maxScrollExtent,
  //       duration: const Duration(
  //         milliseconds: 750,
  //       ),
  //       curve: Curves.easeOutCirc,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes generator'),
      ),
      body: SingleChildScrollView(
        child: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            // if (pending.contains(GenerateRecipeResponse.pendingKey)) {
            //   return const Center(child: CircularProgressIndicator());
            // }
            return Column(
              children: <Widget>[
                const Text('Welcome!'),
                const SizedBox(
                  height: 16,
                ),
                const FilterChipSelection<BasicIngredientsFilter>(
                  enumValues: BasicIngredientsFilter.values,
                  toReadableString: basicIngredientsReadable,
                  label: 'Choose some basic ingredients from your household:',
                ),
                const SizedBox(
                  height: 16,
                ),
                const FilterChipSelection<DietaryRestrictionsFilter>(
                  enumValues: DietaryRestrictionsFilter.values,
                  toReadableString: dietaryRestrictionReadable,
                  label: 'Choose your dietary restrictions:',
                ),
                const SizedBox(
                  height: 16,
                ),
                const FilterChipSelection<CuisineFilter>(
                  enumValues: CuisineFilter.values,
                  toReadableString: cuisineReadable,
                  label: 'Choose your favorite type of food:',
                ),
                const SizedBox(
                  height: 32,
                ),
                TextButton(
                  onPressed: () {
                    final String prompt = 'Imi doresc o reteta culinara care sa cuprinda contina: ${_store.state.basicIngredientsText}; sa tina cont de urmatoarele restrictii alimentare: ${_store.state.dietaryRestrictionsText}; si sa aiba legatura cu bucataria: ${_store.state.cuisineText}';
                    _store.dispatch(GenerateRecipeResponseStart(_model, prompt));
                    context.pushNamed('generatedRecipe');
                    print(_store.state.generatorResponse);
                  },
                  child: const Icon(Icons.generating_tokens, size: 48,),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
