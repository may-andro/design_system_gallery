import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class SmallIconButtonConfigWidget extends StatelessWidget {
  const SmallIconButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLIconButtonWidget(
        iconData: Icons.info,
        onPressed: () => showSnackBar(context, 'Small Icon Button Clicked'),
        size: CLButtonSize.small,
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
