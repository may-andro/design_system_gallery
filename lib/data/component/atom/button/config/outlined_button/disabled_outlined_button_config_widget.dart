import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DisabledOutlinedButtonConfigWidget extends StatelessWidget {
  const DisabledOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Disabled Outlined Button ',
        style: CLButtonStyle.outlined,
        onPressed: null,
      ),
    );
  }
}
