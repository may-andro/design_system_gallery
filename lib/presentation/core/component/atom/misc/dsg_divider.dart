import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DSGDivider extends StatelessWidget {
  const DSGDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DSGAppViewModel>();
    return Divider(
      height: padding1,
      color:
          viewModel.brightness == Brightness.dark ? Colors.white : Colors.black,
    );
  }
}
