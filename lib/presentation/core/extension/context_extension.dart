import 'package:flutter/material.dart';
import 'package:ds_gallery/presentation/core/device/device_resolution.dart';
import 'package:component_library/component_library.dart';
import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  bool get isDarkMode => platformBrightness == Brightness.dark;

  AdaptiveWindowType get windowType => getWindowType(this);

  DeviceResolution get deviceResolution {
    switch (adaptiveWindowType) {
      case AdaptiveWindowType.xsmall:
        return DeviceResolution.mobile;
      case AdaptiveWindowType.small:
        return DeviceResolution.tablet;
      case AdaptiveWindowType.medium:
        return DeviceResolution.desktop;
      case AdaptiveWindowType.large:
        return DeviceResolution.desktop;
      case AdaptiveWindowType.xlarge:
        return DeviceResolution.desktop;
      default:
        return DeviceResolution.desktop;
    }
  }
}
