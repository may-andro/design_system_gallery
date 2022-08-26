import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class RegularFilledButtonConfigWidget extends StatelessWidget {
  const RegularFilledButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Regular Filled Button ',
        onPressed: () => showSnackBar(context, 'Regular Filled Button Clicked'),
        style: CLButtonStyle.filled,
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
