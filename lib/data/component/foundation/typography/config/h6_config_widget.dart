import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class H6ConfigWidget extends StatelessWidget {
  const H6ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Heading 6',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.h6,
    );
  }
}
