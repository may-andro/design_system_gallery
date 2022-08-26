import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class OnBackgroundColorConfigWidget extends StatelessWidget {
  const OnBackgroundColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'On background',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.onBackground,
          ),
        ),
      ],
    );
  }
}
