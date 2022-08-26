import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LargeFilledButtonConfigWidget extends StatelessWidget {
  const LargeFilledButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Large Filled Button ',
        style: CLButtonStyle.filled,
        size: CLButtonSize.large,
        onPressed: () => showSnackBar(context, 'Large Filled Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
