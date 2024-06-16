import 'package:do_you_groceries/src/models/filter_chip_enums.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/user/generated_recipe_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/filterChipSelection.dart';
import 'package:do_you_groceries/src/ui_elements/components/sliver_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
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

  @override
  void initState() {
    _store = StoreProvider.of<AppState>(context, listen: false);

    const String apiKey = String.fromEnvironment('API_KEY', defaultValue: 'key not found');
    if (apiKey == 'cheia nu a fost găsită') {
      throw InvalidApiKey(
        'Cheia nu a fost găsită în environment. Adagă te rog cheia API.',
      );
    }

    _model = GenerativeModel(
      model: 'gemini-1.5-pro',
      apiKey: 'AIzaSyBVuj79tA0VZPGZTPcpZD3Ljc-6Fxi5ptI',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: SliverAppBarProducts(
              _store.state.selectedGroceryList!.selectedIcon,
              'Generator \nde rețete',
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 16),
                      const FilterChipSelection<BasicIngredientsFilter>(
                        enumValues: BasicIngredientsFilter.values,
                        toReadableString: basicIngredientsReadable,
                        label: 'Alege ingredientele pe care le ai prin bucătărie:',
                      ),
                      const SizedBox(height: 16),
                      const FilterChipSelection<DietaryRestrictionsFilter>(
                        enumValues: DietaryRestrictionsFilter.values,
                        toReadableString: dietaryRestrictionReadable,
                        label: 'Restricții alimentare?',
                      ),
                      const SizedBox(height: 16),
                      const FilterChipSelection<CuisineFilter>(
                        enumValues: CuisineFilter.values,
                        toReadableString: cuisineReadable,
                        label: 'Bucătăria preferată:',
                      ),
                      const SizedBox(height: 32),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            final String prompt =
                                'Imi doresc o reteta culinara care sa cuprinda contina: ${_store.state.basicIngredientsText}; sa tina cont de urmatoarele restrictii alimentare: ${_store.state.dietaryRestrictionsText}; si sa aiba legatura cu bucataria: ${_store.state.cuisineText}';
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => RecipeScreen(
                                  model: _model,
                                  prompt: prompt,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 32,
                            ),
                            elevation: 4,

                            shadowColor:
                                Colors.lightBlueAccent.withOpacity(0.5),
                          ),
                          child: const Text(
                            'Generează rețeta',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
