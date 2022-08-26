import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LoadingOutlinedButtonConfigWidget extends StatelessWidget {
  const LoadingOutlinedButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Loading Outlined Button ',
        style: CLButtonStyle.outlined,
        isLoading: true,
        onPressed: () => showSnackBar(context, 'Loading Outlined Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
