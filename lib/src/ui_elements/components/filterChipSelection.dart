import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/filter_chip_enums.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FilterChipSelection<T> extends StatefulWidget {
  const FilterChipSelection({
    required this.enumValues,
    required this.label, this.toReadableString,
    super.key,
  });

  final List<T> enumValues;
  final String Function(T)? toReadableString;
  final String label;


  @override
  State<FilterChipSelection<T>> createState() => _FilterChipSelectionState<T>();
}

class _FilterChipSelectionState<T> extends State<FilterChipSelection<T>> {
  Set<T> filters = <T>{};
  late Store<AppState> store;

  @override
  void initState() {
    store = StoreProvider.of<AppState>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    // Use the provided toReadableString function or default to describeEnum
    final String Function(T p1) toReadableString = widget.toReadableString ?? (T value) => describeEnum(value as Enum);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.label, style: textTheme.labelLarge),
          const SizedBox(height: 5),
          Wrap(
            spacing: 5,
            children: widget.enumValues.map((T enumItem) {
              return FilterChip(
                label: Text(toReadableString(enumItem)),
                selected: filters.contains(enumItem),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(enumItem);
                    } else {
                      filters.remove(enumItem);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Text(
            'Looking for: ${filters.map(toReadableString).join(', ')}',
            style: textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
