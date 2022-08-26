import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class MiniFabConfigWidget extends StatelessWidget {
  const MiniFabConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLFabWidget(
        iconData: Icons.info,
        onPressed: () => showSnackBar(context, 'Mini FAB Clicked'),
        mini: true,
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
