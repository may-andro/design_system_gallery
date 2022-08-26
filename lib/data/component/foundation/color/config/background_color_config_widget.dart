import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class BackgroundColorConfigWidget extends StatelessWidget {
  const BackgroundColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Background',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.background,
          ),
        ),
      ],
    );
  }
}
