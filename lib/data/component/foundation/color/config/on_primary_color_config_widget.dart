import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class OnPrimaryColorConfigWidget extends StatelessWidget {
  const OnPrimaryColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'On Primary Color',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.onPrimary,
          ),
        ),
      ],
    );
  }
}
