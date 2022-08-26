import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class PrimaryColorConfigWidget extends StatelessWidget {
  const PrimaryColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Primary',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.primary,
          ),
        ),
      ],
    );
  }
}
