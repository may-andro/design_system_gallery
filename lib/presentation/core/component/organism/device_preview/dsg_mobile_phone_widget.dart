import 'package:component_library/component_library.dart';
import 'package:device_frame/device_frame.dart';
import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DSGMobilePhoneWidget extends StatelessWidget {
  const DSGMobilePhoneWidget({
    Key? key,
    required this.appBarTitle,
    required this.previewWidget,
    required this.deviceInfo,
    this.isIOS = false,
  }) : super(key: key);

  final String appBarTitle;
  final Widget previewWidget;
  final DeviceInfo deviceInfo;
  final bool isIOS;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: padding16,
        right: padding16,
        bottom: padding32,
      ),
      child: ScaffoldMessenger(
        child: DeviceFrame(
          device: deviceInfo,
          isFrameVisible: true,
          orientation: Orientation.portrait,
          screen: MediaQuery(
            data: DeviceFrame.mediaQuery(
              context: context,
              orientation: Orientation.portrait,
              info: deviceInfo,
            ),
            child: _buildMobileAppView(context),
          ),
        ),
      ),
    );
  }

  Widget _buildMobileAppView(BuildContext context) {
    final viewModel = context.watch<DSGAppViewModel>();
    final clTheme = CLTheme(
      designSystem: viewModel.designSystem,
      brightness: viewModel.brightness,
      isIOS: isIOS,
      adaptiveWindowType: context.windowType,
    );
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        title: appBarTitle,
        builder: (context, child) {
          return CLThemeWidget(
            clTheme: clTheme,
            child: child ?? const SizedBox.shrink(),
          );
        },
        home: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
          ),
          body: Container(
            color: clTheme.colorPallet.background,
            padding: const EdgeInsets.all(0),
            child: Center(
              child: previewWidget,
            ),
          ),
        ),
      ),
    );
  }
}
