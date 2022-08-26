import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class RegularOutlinedButtonConfigWidget extends StatelessWidget {
  const RegularOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Regular Outlined Button ',
        style: CLButtonStyle.outlined,
        onPressed: () => showSnackBar(context, 'Regular Outlined Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
