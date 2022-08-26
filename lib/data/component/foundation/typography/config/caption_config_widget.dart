import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class CaptionConfigWidget extends StatelessWidget {
  const CaptionConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CLTextWidget(
      'Caption',
      color: CLThemeColor.grey90,
      style: CLThemeTextStyle.caption,
    );
  }
}
