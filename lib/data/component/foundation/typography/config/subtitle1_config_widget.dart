import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class Subtitle1ConfigWidget extends StatelessWidget {
  const Subtitle1ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Subtitle 1',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.subtitle1,
    );
  }
}
