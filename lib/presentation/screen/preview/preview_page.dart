import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/presentation/core/component/molecule/app_bar/dsg_preview_config_bar_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/code_viewer/dsg_code_view_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_error_container_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_responsive_container_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/device_preview/dsg_mobile_phone_widget.dart';
import 'package:ds_gallery/presentation/core/device/device_resolution.dart';
import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/core/view_model/view_model_provider_widget.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:ds_gallery/presentation/screen/preview/preview_view_model.dart';
import 'package:ds_gallery/presentation/screen/preview/widgets/config_info_tab_widget.dart';
import 'package:ds_gallery/presentation/screen/preview/widgets/preview_tab_view_widget.dart';
import 'package:ds_gallery/presentation/screen/preview/widgets/mobile_devices_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({
    Key? key,
    required this.component,
  }) : super(key: key);

  final Component component;

  @override
  Widget build(BuildContext context) {
    return ViewModelProviderWidget<PreviewViewModel>(
      onViewModelProvided: (viewModel) {
        viewModel.onInit(component);
      },
      builder: (context, viewModel, _) {
        return Scaffold(
          body: DSGResponsiveContainerWidget(
            mobile: _buildMobileTabletView,
            tablet: _buildMobileTabletView,
            desktop: _buildDesktopView,
          ),
        );
      },
    );
  }

  Widget _buildMobileTabletView(BuildContext context) {
    return Column(
      key: const Key('mobileTabletViewKey'),
      children: [
        _buildConfigBar(context),
        const Divider(thickness: padding2),
        Expanded(
          child: _buildPreviewTabView(
            context,
            [
              ConfigInfoTabWidget(component: component),
              _buildDevicePreview(context, isIOS: true),
              _buildDevicePreview(context, isIOS: false),
              _buildSourceCodeView(context),
            ],
            [
              PreviewTabType.info,
              PreviewTabType.ios,
              PreviewTabType.android,
              PreviewTabType.code,
            ],
          ),
        )
      ],
    );
  }

  Widget _buildDesktopView(BuildContext context) {
    const componentWidgetFlex = 3;
    const previewWidgetFlex = 6;

    return Column(
      key: const Key('desktopViewKey'),
      children: [
        _buildConfigBar(context),
        const Divider(thickness: padding2),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: componentWidgetFlex,
                child: ConfigInfoTabWidget(component: component),
              ),
              Expanded(
                flex: previewWidgetFlex,
                child: _buildPreviewTabView(
                  context,
                  [
                    _buildDevicePreview(context, isIOS: true),
                    _buildDevicePreview(context, isIOS: false),
                    _buildSourceCodeView(context),
                  ],
                  [
                    PreviewTabType.ios,
                    PreviewTabType.android,
                    PreviewTabType.code,
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildConfigBar(BuildContext context) {
    final viewModel = context.read<PreviewViewModel>();
    final isIosTabSelected =
        viewModel.selectedPreviewTabType == PreviewTabType.ios;
    final isDesktop = context.deviceResolution == DeviceResolution.desktop;
    final isInfoTabSelected =
        viewModel.selectedPreviewTabType == PreviewTabType.info;
    final isNoTabSelected = viewModel.selectedPreviewTabType == null;
    final isDesktopWithoutTabSelection =
        isDesktop && (isNoTabSelected || isInfoTabSelected);

    return DSGPreviewConfigBarWidget(
      title: component.title,
      isCopyIconVisible:
          viewModel.selectedPreviewTabType == PreviewTabType.code,
      onCopyIconClicked: () async {
        final message = await viewModel.onCopyClicked();
        context.showSnackBar(message);
      },
      isIOSIconVisible: isIosTabSelected || isDesktopWithoutTabSelection,
      onIOSIconClicked: () => _showDevicesBottomSheet(context, isIOS: true),
      isAndroidIconVisible:
          viewModel.selectedPreviewTabType == PreviewTabType.android,
      onAndroidIconClicked: () {
        _showDevicesBottomSheet(context, isIOS: false);
      },
      isBackButtonVisible: true,
    );
  }

  Future _showDevicesBottomSheet(BuildContext context, {required bool isIOS}) {
    final appViewModel = context.read<DSGAppViewModel>();

    Widget dialogWidget;
    if (isIOS) {
      dialogWidget = MobileDevicesWidget.ios(
        title: 'Available iOS devices',
        selectedDeviceInfo: appViewModel.iosDeviceInfo,
        onItemClicked: (deviceInfo) {
          appViewModel.iosDeviceInfo = deviceInfo;
          Navigator.pop(context);
        },
      );
    } else {
      dialogWidget = MobileDevicesWidget.android(
        title: 'Available Android devices',
        selectedDeviceInfo: appViewModel.androidDeviceInfo,
        onItemClicked: (deviceInfo) {
          appViewModel.androidDeviceInfo = deviceInfo;
          Navigator.pop(context);
        },
      );
    }

    return showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return dialogWidget;
      },
    );
  }

  Widget _buildPreviewTabView(
    BuildContext context,
    List<Widget> widgetList,
    List<PreviewTabType> tabList,
  ) {
    final viewModel = context.read<PreviewViewModel>();
    return PreviewTabViewWidget(
      widgetList: widgetList,
      tabTypeList: tabList,
      selectedComponentPreviewTabType: viewModel.selectedPreviewTabType,
      onTabChanged: viewModel.setPreviewTabType,
    );
  }

  Widget _buildDevicePreview(BuildContext context, {required bool isIOS}) {
    final viewModel = context.read<PreviewViewModel>();
    final appViewModel = context.read<DSGAppViewModel>();
    final selectedComponentConfig = viewModel.selectedComponentConfig;
    final deviceInfo =
        isIOS ? appViewModel.iosDeviceInfo : appViewModel.androidDeviceInfo;

    if (selectedComponentConfig == null) {
      return const DSGErrorContainerWidget(
        errorTitle: 'Oops…',
        errorMessage: 'Something went wrong, please try later.',
      );
    }

    return DSGMobilePhoneWidget(
      previewWidget: selectedComponentConfig.widget,
      appBarTitle: selectedComponentConfig.title,
      isIOS: isIOS,
      deviceInfo: deviceInfo,
    );
  }

  Widget _buildSourceCodeView(BuildContext context) {
    final viewModel = context.read<PreviewViewModel>();
    final selectedComponentConfig = viewModel.selectedComponentConfig;

    if (selectedComponentConfig == null) {
      return const DSGErrorContainerWidget(
        errorTitle: 'Oops…',
        errorMessage: 'Something went wrong, please try later',
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding24),
      child: DSGCodeViewWidget(
        filePath: selectedComponentConfig.widgetPath,
        onFileLoadedInView: viewModel.onFileLoadedInView,
      ),
    );
  }
}
