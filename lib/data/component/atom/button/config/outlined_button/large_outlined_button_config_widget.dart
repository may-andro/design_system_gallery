import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LargeOutlinedButtonConfigWidget extends StatelessWidget {
  const LargeOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Large Outlined Button ',
        style: CLButtonStyle.outlined,
        size: CLButtonSize.large,
        onPressed: () => showSnackBar(context, 'Large Outlined Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
