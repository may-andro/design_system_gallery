import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class Grey30ColorConfigWidget extends StatelessWidget {
  const Grey30ColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Grey 30 Color',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.grey30,
          ),
        ),
      ],
    );
  }
}
