import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required this.onSearchApplied,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final Function(String) onSearchApplied;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme.headline5;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding16),
      child: TextField(
        key: const Key('searchTextFieldKey'),
        controller: textEditingController,
        onChanged: onSearchApplied,
        style: textStyle?.copyWith(
          color: colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          hintText: 'Search component',
          hintStyle: textStyle?.copyWith(
            color: Theme.of(context).hintColor,
          ),
          fillColor: colorScheme.surface,
          filled: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(padding16),
            child: Icon(
              Icons.search,
              color: colorScheme.onSurface,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(padding12)),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
