import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class Grey40ColorConfigWidget extends StatelessWidget {
  const Grey40ColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Grey 40 Color',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.grey40,
          ),
        ),
      ],
    );
  }
}
