import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/filter_chip_enums.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FilterChipSelection<T extends Enum> extends StatefulWidget {
  const FilterChipSelection({
    required this.enumValues,
    required this.label,
    this.toReadableString,
    super.key,
  });

  final List<T> enumValues;
  final String Function(T)? toReadableString;
  final String label;

  @override
  State<FilterChipSelection<T>> createState() => _FilterChipSelectionState<T>();
}

class _FilterChipSelectionState<T extends Enum> extends State<FilterChipSelection<T>> {
  Set<T> filters = <T>{};
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    super.initState();
  }

  void _dispatchAction(T enumItem, bool selected) {
    final String selectedItems = filters.map((T e) => e.name).join(', ');

    if (enumItem is CuisineFilter) {
      store.dispatch(SetCuisineFilterSelection(selectedItems: selectedItems));
    } else if (enumItem is BasicIngredientsFilter) {
      store.dispatch(SetBasicIngredientsFilterSelection(selectedItems: selectedItems));
    } else if (enumItem is DietaryRestrictionsFilter) {
      store.dispatch(SetDietaryRestrictionsFilterSelection(selectedItems: selectedItems));
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final String Function(T p1) toReadableString = widget.toReadableString ?? (T value) => value.name;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.label, style: textTheme.titleMedium?.copyWith(color: Colors.black87)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: widget.enumValues.map((T enumItem) {
            return FilterChip(
              label: Text(toReadableString(enumItem)),
              selected: filters.contains(enumItem),
              selectedColor: Colors.lightBlueAccent,
              onSelected: (bool selected) {
                setState(() {
                  if (selected) {
                    filters.add(enumItem);
                  } else {
                    filters.remove(enumItem);
                  }
                  _dispatchAction(enumItem, selected);
                });
              },
              backgroundColor: Colors.grey[200],
              labelStyle: const TextStyle(color: Colors.black87),
            );
          }).toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
