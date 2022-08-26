import 'package:ds_gallery/di/locator.dart';
import 'package:ds_gallery/presentation/core/view_model/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewModelProviderWidget<VM extends BaseViewModel> extends StatefulWidget {
  const ViewModelProviderWidget({
    required this.builder,
    this.onViewModelProvided,
    Key? key,
  }) : super(key: key);

  final Widget Function(
    BuildContext context,
    VM viewModel,
    Widget? child,
  ) builder;
  final Function(VM)? onViewModelProvided;

  @override
  _ViewModelProviderWidgetState<VM> createState() =>
      _ViewModelProviderWidgetState<VM>();
}

class _ViewModelProviderWidgetState<VM extends BaseViewModel>
    extends State<ViewModelProviderWidget<VM>> {
  late VM viewModel;

  @override
  void initState() {
    viewModel = locator<VM>();
    widget.onViewModelProvided?.call(viewModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<VM>(
      create: (context) => viewModel,
      child: Consumer<VM>(builder: widget.builder),
    );
  }
}
