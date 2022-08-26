import 'package:device_frame/device_frame.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/component/molecule/app_bar/dsg_preview_config_bar_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/device_preview/dsg_mobile_phone_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class DSGPhonePreviewContainerWidget extends StatelessWidget {
  const DSGPhonePreviewContainerWidget({
    Key? key,
    required this.componentGroup,
  }) : super(key: key);

  final ComponentGroup componentGroup;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DSGPreviewConfigBarWidget(title: ''),
        const Divider(thickness: padding2),
        Expanded(child: _buildMobilePreview()),
      ],
    );
  }

  Widget _buildMobilePreview() {
    return Row(
      children: [
        Expanded(
          child: DSGMobilePhoneWidget(
            previewWidget: componentGroup.previewWidget,
            appBarTitle: componentGroup.title,
            deviceInfo: Devices.ios.iPhone13,
            isIOS: true,
          ),
        ),
        Expanded(
          child: DSGMobilePhoneWidget(
            previewWidget: componentGroup.previewWidget,
            appBarTitle: componentGroup.title,
            deviceInfo: Devices.android.samsungGalaxyS20,
          ),
        ),
      ],
    );
  }
}
