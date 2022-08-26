import 'package:ds_gallery/presentation/core/component/organism/code_viewer/syntax_highlighter.dart';
import 'package:flutter/material.dart';

class LightSyntaxHighlighterStyle extends SyntaxHighlighterStyle {
  @override
  TextStyle? get baseStyle => const TextStyle(color: Color(0xFF000000));

  @override
  TextStyle? get classStyle => const TextStyle(color: Color(0xFF512DA8));

  @override
  TextStyle? get commentStyle => const TextStyle(color: Color(0xFF9E9E9E));

  @override
  TextStyle? get constantStyle => const TextStyle(color: Color(0xFF795548));

  @override
  TextStyle? get keywordStyle => const TextStyle(color: Color(0xFF9C27B0));

  @override
  TextStyle? get numberStyle => const TextStyle(color: Color(0xFF1565C0));

  @override
  TextStyle? get punctuationStyle => const TextStyle(color: Color(0xFF000000));

  @override
  TextStyle? get stringStyle => const TextStyle(color: Color(0xFF43A047));
}

class DarkSyntaxHighlighterStyle extends SyntaxHighlighterStyle {
  @override
  TextStyle? get baseStyle => const TextStyle(color: Color(0xFFFFFFFF));

  @override
  TextStyle? get classStyle => const TextStyle(color: Color(0xFF009688));

  @override
  TextStyle? get commentStyle => const TextStyle(color: Color(0xFF9E9E9E));

  @override
  TextStyle? get constantStyle => const TextStyle(color: Color(0xFF795548));

  @override
  TextStyle? get keywordStyle => const TextStyle(color: Color(0xFF80CBC4));

  @override
  TextStyle? get numberStyle => const TextStyle(color: Color(0xFF1565C0));

  @override
  TextStyle? get punctuationStyle => const TextStyle(color: Color(0xFFFFFFFF));

  @override
  TextStyle? get stringStyle => const TextStyle(color: Color(0xFF009688));
}
