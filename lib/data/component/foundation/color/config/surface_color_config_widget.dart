import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class SurfaceColorConfigWidget extends StatelessWidget {
  const SurfaceColorConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clTheme = CLThemeWidget.of(context);
    return Column(
      children: [
        const CLTextWidget(
          'Surface',
          color: CLThemeColor.grey80,
          style: CLThemeTextStyle.body1,
        ),
        Expanded(
          child: Container(
            color: clTheme.colorPallet.surface,
          ),
        ),
      ],
    );
  }
}
