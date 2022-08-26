import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LoadingFilledButtonConfigWidget extends StatelessWidget {
  const LoadingFilledButtonConfigWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CLButtonWidget(
        'Loading Filled Button ',
        style: CLButtonStyle.filled,
        isLoading: true,
        onPressed: () => showSnackBar(context, 'Loading Filled Button Clicked'),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
