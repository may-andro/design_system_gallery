import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class H4ConfigWidget extends StatelessWidget {
  const H4ConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Heading 4',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.h4,
    );
  }
}
