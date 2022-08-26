import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LoadingGhostButtonConfigWidget extends StatelessWidget {
  const LoadingGhostButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Loading Ghost Button ',
        style: CLButtonStyle.ghost,
        isLoading: true,
        onPressed: () => showSnackBar(context, 'Loading Ghost Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
