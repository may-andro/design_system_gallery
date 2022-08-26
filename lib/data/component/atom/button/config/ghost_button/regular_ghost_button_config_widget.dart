import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class RegularGhostButtonConfigWidget extends StatelessWidget {
  const RegularGhostButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Regular Ghost Button ',
        style: CLButtonStyle.ghost,
        onPressed: () => showSnackBar(context, 'Regular Ghost Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
