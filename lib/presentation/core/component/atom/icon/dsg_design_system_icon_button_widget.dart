import 'package:component_library/component_library.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DSGDesignSystemIconButtonWidget extends StatelessWidget {
  const DSGDesignSystemIconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DSGAppViewModel>();
    final designSystemPath = (viewModel.designSystem == DesignSystem.scarletRed)
        ? 'assets/images/demo_logo.png'
        : 'assets/images/demo_logo.png';

    return IconButton(
      icon: Image.asset(designSystemPath),
      onPressed: viewModel.toggleDesignSystem,
    );
  }
}
