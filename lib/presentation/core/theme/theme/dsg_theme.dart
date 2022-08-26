import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/color/color_theme.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_color_palette.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_dark_color_palette.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_light_color_palette.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/typography/typography.dart';
import 'package:flutter/material.dart';

class DSGTheme {
  DSGTheme(this._darkColorPalette, this._lightColorPalette);

  final DSGLightColorPalette _lightColorPalette;
  final DSGDarkColorPalette _darkColorPalette;

  ThemeData get lightTheme => _getThemeData(_lightColorPalette);

  ThemeData get darkTheme => _getThemeData(_darkColorPalette);

  ThemeData _getThemeData(DSGColorPalette colorPalette) {
    final colorScheme = getColorScheme(colorPalette);
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: textTheme,
      primaryColor: colorScheme.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: colorPalette.highlightColor,
      focusColor: colorPalette.focusColor,
      hintColor: colorPalette.hintColor,
    );
  }

  DSGColorPalette getColorPalette(bool isDarkMode) {
    if(isDarkMode) return _darkColorPalette;
    return _lightColorPalette;
  }
}
