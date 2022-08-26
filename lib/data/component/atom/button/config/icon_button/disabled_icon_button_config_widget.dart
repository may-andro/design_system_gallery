import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DisabledIconButtonConfigWidget extends StatelessWidget {
  const DisabledIconButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLIconButtonWidget(
        iconData: Icons.info,
        onPressed: null,
      ),
    );
  }
}
