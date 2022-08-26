import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class Subtitle2ConfigWidget extends StatelessWidget {
  const Subtitle2ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Subtitle 2',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.subtitle2,
    );
  }
}
