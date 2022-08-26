import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class RegularIconButtonConfigWidget extends StatelessWidget {
  const RegularIconButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLIconButtonWidget(
        iconData: Icons.info,
        onPressed: () => showSnackBar(context, 'Regular Icon Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
