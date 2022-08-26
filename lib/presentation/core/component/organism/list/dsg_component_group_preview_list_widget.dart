import 'dart:collection';

import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class DSGComponentGroupPreviewListWidget extends StatelessWidget {
  DSGComponentGroupPreviewListWidget({required List<Widget> widgets, Key? key})
      : widgets = UnmodifiableListView(widgets),
        super(key: key);

  final UnmodifiableListView<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: padding8),
      separatorBuilder: (context, i) => const SizedBox(height: padding16),
      itemBuilder: (context, i) => widgets[i],
      itemCount: widgets.length,
    );
  }
}
