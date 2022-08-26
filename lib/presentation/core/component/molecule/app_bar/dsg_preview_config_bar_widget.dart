import 'package:ds_gallery/presentation/core/component/atom/icon/dsg_brightness_icon_button_widget.dart';
import 'package:ds_gallery/presentation/core/component/atom/icon/dsg_design_system_icon_button_widget.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DSGPreviewConfigBarWidget extends StatelessWidget {
  const DSGPreviewConfigBarWidget({
    Key? key,
    required this.title,
    this.isCopyIconVisible = false,
    this.isAndroidIconVisible = false,
    this.isIOSIconVisible = false,
    this.isBackButtonVisible = false,
    this.onCopyIconClicked,
    this.onAndroidIconClicked,
    this.onIOSIconClicked,
  }) : super(key: key);

  final String title;
  final bool isCopyIconVisible;
  final bool isAndroidIconVisible;
  final bool isIOSIconVisible;
  final bool isBackButtonVisible;
  final Function()? onCopyIconClicked;
  final Function()? onAndroidIconClicked;
  final Function()? onIOSIconClicked;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(padding16),
      child: Row(
        key: const Key('previewConfigHeaderWidgetKey'),
        children: [
          if (isBackButtonVisible) const BackButton(),
          const SizedBox(width: padding16),
          Expanded(
            child: DSGTextWidget(
              label: title,
              textType: DSGTextType.headline4,
              textColor: colorScheme.onSurface,
            ),
          ),
          const Spacer(),
          _buildAndroidIcon(context),
          _buildIosIcon(context),
          _buildCopyIcon(context),
          const SizedBox(width: padding16),
          const DSGBrightnessIconButtonWidget(),
          const SizedBox(width: padding16),
          const DSGDesignSystemIconButtonWidget(),
        ],
      ),
    );
  }

  Widget _buildCopyIcon(BuildContext context) {
    if (isCopyIconVisible) {
      return IconButton(
        key: const Key('copyIconButtonKey'),
        icon: const Icon(FontAwesomeIcons.copy),
        onPressed: onCopyIconClicked,
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildIosIcon(BuildContext context) {
    if (isIOSIconVisible) {
      return IconButton(
        key: const Key('iosDeviceButtonKey'),
        icon: const Icon(FontAwesomeIcons.apple),
        onPressed: onIOSIconClicked,
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildAndroidIcon(BuildContext context) {
    if (isAndroidIconVisible) {
      return IconButton(
        key: const Key('androidDeviceButtonKey'),
        icon: const Icon(FontAwesomeIcons.android),
        onPressed: onAndroidIconClicked,
      );
    }
    return const SizedBox.shrink();
  }
}
