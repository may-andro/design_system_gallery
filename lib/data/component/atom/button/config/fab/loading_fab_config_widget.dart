import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LoadingFabConfigWidget extends StatelessWidget {
  const LoadingFabConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CLFabWidget(
        iconData: Icons.info,
        isLoading: true,
      ),
    );
  }
}
