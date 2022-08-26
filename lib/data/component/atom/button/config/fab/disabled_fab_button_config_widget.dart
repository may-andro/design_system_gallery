import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DisabledFabConfigWidget extends StatelessWidget {
  const DisabledFabConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLFabWidget(
        iconData: Icons.info,
        onPressed: null,
      ),
    );
  }
}
