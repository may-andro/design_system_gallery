import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LargeGhostButtonConfigWidget extends StatelessWidget {
  const LargeGhostButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Large Ghost Button ',
        style: CLButtonStyle.ghost,
        size: CLButtonSize.large,
        onPressed: () => showSnackBar(context, 'Large Ghost Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
