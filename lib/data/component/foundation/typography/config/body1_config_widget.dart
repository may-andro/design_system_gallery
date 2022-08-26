import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class Body1ConfigWidget extends StatelessWidget {
  const Body1ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Body 1',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.body1,
    );
  }
}
