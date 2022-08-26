import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DSGBrightnessIconButtonWidget extends StatelessWidget {
  const DSGBrightnessIconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DSGAppViewModel>();
    final brightnessIconData = (viewModel.brightness == Brightness.dark)
        ? FontAwesomeIcons.moon
        : FontAwesomeIcons.sun;

    return IconButton(
      icon: Icon(brightnessIconData),
      onPressed: viewModel.toggleBrightness,
    );
  }
}
