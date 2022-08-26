import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class SecondaryVariantColorConfigWidget extends StatelessWidget {
  const SecondaryVariantColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Secondary Variant',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.secondaryVariant,
          ),
        ),
      ],
    );
  }
}
