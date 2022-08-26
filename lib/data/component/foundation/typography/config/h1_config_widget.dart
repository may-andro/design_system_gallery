import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class H1ConfigWidget extends StatelessWidget {
  const H1ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Heading 1',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.h1,
    );
  }
}
