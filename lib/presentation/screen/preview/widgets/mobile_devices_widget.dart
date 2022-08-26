import 'package:device_frame/device_frame.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileDevicesWidget extends StatelessWidget {
  MobileDevicesWidget.android({
    Key? key,
    required this.title,
    required this.selectedDeviceInfo,
    required this.onItemClicked,
  })  : mobileDeviceModelList = _androidDeviceList,
        super(key: key);

  MobileDevicesWidget.ios({
    Key? key,
    required this.title,
    required this.selectedDeviceInfo,
    required this.onItemClicked,
  })  : mobileDeviceModelList = _iosDeviceList,
        super(key: key);

  final String title;
  final List<_MobileDeviceModel> mobileDeviceModelList;
  final DeviceInfo selectedDeviceInfo;
  final Function(DeviceInfo) onItemClicked;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      key: const Key('deviceListWidgetKey'),
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(padding16),
          child: DSGTextWidget(
            label: title,
            textType: DSGTextType.headline4,
            textAlign: TextAlign.left,
            textColor: colorScheme.onSurface,
          ),
        ),
        Expanded(child: _buildListView()),
      ],
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return _MobileDeviceModelWidget(
          mobileDeviceModel: mobileDeviceModelList[index],
          onClicked: (item) => onItemClicked(item),
          isSelected:
              selectedDeviceInfo == mobileDeviceModelList[index].deviceInfo,
        );
      },
      itemCount: mobileDeviceModelList.length,
    );
  }
}

class _MobileDeviceModelWidget extends StatelessWidget {
  const _MobileDeviceModelWidget({
    Key? key,
    required this.mobileDeviceModel,
    required this.isSelected,
    required this.onClicked,
  }) : super(key: key);

  final _MobileDeviceModel mobileDeviceModel;
  final bool isSelected;
  final Function(DeviceInfo) onClicked;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      selected: isSelected,
      selectedTileColor: colorScheme.surface,
      leading: Icon(mobileDeviceModel.iconData),
      title: DSGTextWidget(
        label: mobileDeviceModel.deviceInfo.name,
        textType: DSGTextType.subtitle1,
        textColor: isSelected ? colorScheme.primary : colorScheme.onSurface,
      ),
      onTap: () => onClicked(mobileDeviceModel.deviceInfo),
    );
  }
}

class _MobileDeviceModel {
  _MobileDeviceModel(
    this.deviceInfo,
    this.iconData,
  );

  final DeviceInfo deviceInfo;
  final IconData iconData;
}

final _androidDeviceList = [
  for (final device in Devices.android.all)
    _MobileDeviceModel(
      device,
      device.identifier.type == DeviceType.phone
          ? FontAwesomeIcons.mobile
          : FontAwesomeIcons.tablet,
    ),
];

final _iosDeviceList = [
  for (final device in Devices.ios.all)
    _MobileDeviceModel(
      device,
      device.identifier.type == DeviceType.phone
          ? FontAwesomeIcons.mobile
          : FontAwesomeIcons.tablet,
    ),
];
