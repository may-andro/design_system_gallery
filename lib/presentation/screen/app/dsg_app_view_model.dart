import 'package:component_library/component_library.dart';
import 'package:device_frame/device_frame.dart';
import 'package:ds_gallery/presentation/core/theme/theme/dsg_theme.dart';
import 'package:ds_gallery/presentation/core/view_model/base_view_model.dart';
import 'package:flutter/material.dart';

class DSGAppViewModel extends BaseViewModel {
  DSGAppViewModel(this._dsgTheme);

  final DSGTheme _dsgTheme;

  Brightness _brightness = Brightness.light;

  DesignSystem _designSystem = DesignSystem.oceanBlue;

  DeviceInfo _androidDevice = Devices.android.samsungGalaxyS20;

  DeviceInfo _iosDevice = Devices.ios.iPhone13;

  bool _isLoggedIn = false;

  DSGTheme get dsgTheme => _dsgTheme;

  Brightness get brightness => _brightness;

  DesignSystem get designSystem => _designSystem;

  DeviceInfo get androidDeviceInfo => _androidDevice;

  bool get isLoggedIn => _isLoggedIn;

  set androidDeviceInfo(DeviceInfo deviceInfo) {
    _androidDevice = deviceInfo;
    notifyListener();
  }

  DeviceInfo get iosDeviceInfo => _iosDevice;

  set iosDeviceInfo(DeviceInfo deviceInfo) {
    _iosDevice = deviceInfo;
    notifyListener();
  }

  Future<void> onInit(Brightness? brightness) async {
    _brightness = brightness ?? _brightness;
    _loadLoginStatus();
  }

  Future<void> _loadLoginStatus() async {
    _isLoggedIn = false;
    setSuccessState();
  }

  void toggleBrightness() {
    if (_brightness == Brightness.dark) {
      _brightness = Brightness.light;
    } else {
      _brightness = Brightness.dark;
    }
    notifyListener();
  }

  void toggleDesignSystem() {
    if (_designSystem == DesignSystem.oceanBlue) {
      _designSystem = DesignSystem.scarletRed;
    } else {
      _designSystem = DesignSystem.oceanBlue;
    }
    notifyListener();
  }
}
