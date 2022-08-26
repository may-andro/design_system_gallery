import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DisabledFilledButtonConfigWidget extends StatelessWidget {
  const DisabledFilledButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Disabled Filled Button ',
        style: CLButtonStyle.filled,
        onPressed: null,
      ),
    );
  }
}
