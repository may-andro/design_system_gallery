import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_color_palette.dart';
import 'package:flutter/material.dart';

ColorScheme getColorScheme(DSGColorPalette colorPalette) {
  return ColorScheme(
    primary: colorPalette.primary,
    onPrimary: colorPalette.onPrimary,
    primaryContainer: colorPalette.primaryContainer,
    secondary: colorPalette.secondary,
    onSecondary: colorPalette.onSecondary,
    secondaryContainer: colorPalette.secondaryContainer,
    background: colorPalette.background,
    onBackground: colorPalette.onBackground,
    surface: colorPalette.surface,
    onSurface: colorPalette.onSurface,
    error: colorPalette.error,
    onError: colorPalette.onError,
    brightness: colorPalette.brightness,
  );
}