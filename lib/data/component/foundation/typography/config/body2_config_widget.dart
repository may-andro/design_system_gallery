import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class Body2ConfigWidget extends StatelessWidget {
  const Body2ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Body 2',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.body2,
    );
  }
}
