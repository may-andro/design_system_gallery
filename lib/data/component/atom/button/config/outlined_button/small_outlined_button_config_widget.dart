import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class SmallOutlinedButtonConfigWidget extends StatelessWidget {
  const SmallOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Small Outlined Button',
        style: CLButtonStyle.outlined,
        size: CLButtonSize.small,
        onPressed: () => showSnackBar(context, 'Small Outlined Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
