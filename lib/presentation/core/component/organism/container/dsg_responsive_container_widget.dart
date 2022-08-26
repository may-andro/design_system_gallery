import 'package:ds_gallery/presentation/core/device/device_resolution.dart';
import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class DSGResponsiveContainerWidget extends StatelessWidget {
  const DSGResponsiveContainerWidget({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  final WidgetBuilder mobile;
  final WidgetBuilder tablet;
  final WidgetBuilder desktop;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          switch (context.deviceResolution) {
            case DeviceResolution.mobile:
              return mobile(context);
            case DeviceResolution.tablet:
              return tablet(context);
            case DeviceResolution.desktop:
              return desktop(context);
          }
        },
      ),
    );
  }
}
