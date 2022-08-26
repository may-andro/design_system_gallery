import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DisabledGhostButtonConfigWidget extends StatelessWidget {
  const DisabledGhostButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Disabled Ghost Button ',
        style: CLButtonStyle.ghost,
        onPressed: null,
      ),
    );
  }
}
