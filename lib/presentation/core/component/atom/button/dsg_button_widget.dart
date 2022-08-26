import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class DSGButtonWidget extends StatelessWidget {
  const DSGButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.isLoading,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: colorScheme.onBackground,
        backgroundColor: colorScheme.primary,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(padding8),
          ),
        ),
      ),
      child: SizedBox(
        height: padding48,
        child: Center(
          child: isLoading ? _buildLoadingView() : _buildText(context),
        ),
      ),
    );
  }

  Widget _buildLoadingView() {
    return const CircularProgressIndicator(color: Colors.white);
  }

  Widget _buildText(BuildContext context) {
    return DSGTextWidget(
      label: label,
      textType: DSGTextType.button,
      textColor: Colors.white,
    );
  }
}
