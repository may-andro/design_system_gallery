import 'package:ds_gallery/presentation/core/view_state/view_state.dart';
import 'package:flutter/material.dart';

class ViewStateBuilderWidget extends StatelessWidget {
  const ViewStateBuilderWidget({
    required this.viewState,
    required this.loadingBuilder,
    required this.builder,
    this.onRetry,
    this.errorBuilder,
    Key? key,
  }) : super(key: key);

  final ViewState viewState;
  final WidgetBuilder loadingBuilder;
  final WidgetBuilder builder;
  final VoidCallback? onRetry;
  final WidgetBuilder? errorBuilder;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    switch (viewState) {
      case ViewState.error:
        final errorBuilder = this.errorBuilder;
        if (errorBuilder != null) {
          return errorBuilder(context);
        }
        return Container();
      case ViewState.success:
        return builder(context);
      case ViewState.loading:
        return loadingBuilder(context);
    }
  }
}
