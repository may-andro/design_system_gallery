import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class IconFilledButtonConfigWidget extends StatelessWidget {
  const IconFilledButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Icon Filled Button ',
        style: CLButtonStyle.filled,
        onPressed: () => showSnackBar(context, 'Icon Filled Button Clicked'),
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
