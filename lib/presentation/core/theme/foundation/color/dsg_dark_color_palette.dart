import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_color_palette.dart';
import 'package:flutter/material.dart';

class DSGDarkColorPalette extends DSGColorPalette {
  @override
  Color get background => const Color(0xFF241E30);

  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get error => Colors.white;

  @override
  Color get onBackground => const Color(0x0DFFFFFF);

  @override
  Color get onError => Colors.white;

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get onSurface => Colors.white;

  @override
  Color get primary => const Color(0xFFFF8383);

  @override
  Color get primaryContainer => const Color(0xFF1CDEC9);

  @override
  Color get secondary => const Color(0xFF4D1F7C);

  @override
  Color get secondaryContainer => const Color(0xFF451B6F);

  @override
  Color get surface => const Color(0xFF1F1929);

  @override
  Color get focusColor => Colors.white.withOpacity(0.12);

  @override
  Color get hintColor => const Color(0xFF999999);

  @override
  Color get highlightColor => Colors.transparent;
}
