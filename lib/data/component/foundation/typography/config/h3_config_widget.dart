import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class H3ConfigWidget extends StatelessWidget {
  const H3ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Heading 3',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.h3,
    );
  }
}
