import 'package:ds_gallery/presentation/core/theme/foundation/color/dsg_color_palette.dart';
import 'package:flutter/material.dart';

class DSGLightColorPalette extends DSGColorPalette {
  @override
  Color get background => const Color(0xFFE6EBEB);

  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get error => const Color(0xFF1A1A1A);

  @override
  Color get onBackground => Colors.white;

  @override
  Color get onError => const Color(0xFF1A1A1A);

  @override
  Color get onPrimary => const Color(0xFF1A1A1A);

  @override
  Color get onSecondary => const Color(0xFF322942);

  @override
  Color get onSurface => const Color(0xFF1A1A1A);

  @override
  Color get primary => const Color(0xFFB93C5D);

  @override
  Color get primaryContainer => const Color(0xFF117378);

  @override
  Color get secondary => const Color(0xFFEFF3F3);

  @override
  Color get secondaryContainer => const Color(0xFF322942);

  @override
  Color get surface => const Color(0xFFFAFBFB);

  @override
  Color get focusColor => Colors.black.withOpacity(0.12);

  @override
  Color get hintColor => const Color(0xFF999999);

  @override
  Color get highlightColor => Colors.transparent;
}
