import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class IconOutlinedButtonConfigWidget extends StatelessWidget {
  const IconOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Icon Outlined Button ',
        style: CLButtonStyle.outlined,
        onPressed: () => showSnackBar(context, 'Icon Outlined Button Clicked'),
        iconData: Icons.color_lens,
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
