import 'package:flutter/material.dart';

class DSGTextWidget extends StatelessWidget {
  const DSGTextWidget({
    Key? key,
    required this.textType,
    required this.label,
    required this.textColor,
    this.textAlign = TextAlign.left,
    this.maxLines,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  final DSGTextType textType;
  final String label;
  final Color textColor;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    final textStyle = textType.getTextStyle(context);
    return Text(
      label,
      style: textStyle?.copyWith(color: textColor),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}

extension DSGTextTypeExtension on DSGTextType {
  TextStyle? getTextStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    switch (this) {
      case DSGTextType.headline1:
        return textTheme.headline1;
      case DSGTextType.headline2:
        return textTheme.headline2;
      case DSGTextType.headline3:
        return textTheme.headline3;
      case DSGTextType.headline4:
        return textTheme.headline4;
      case DSGTextType.headline5:
        return textTheme.headline5;
      case DSGTextType.headline6:
        return textTheme.headline6;
      case DSGTextType.caption:
        return textTheme.caption;
      case DSGTextType.overline:
        return textTheme.overline;
      case DSGTextType.subtitle1:
        return textTheme.subtitle1;
      case DSGTextType.subtitle2:
        return textTheme.subtitle2;
      case DSGTextType.bodyText1:
        return textTheme.bodyText1;
      case DSGTextType.bodyText2:
        return textTheme.bodyText2;
      case DSGTextType.button:
        return textTheme.button;
    }
  }
}

enum DSGTextType {
  headline1,
  headline2,
  headline3,
  headline4,
  headline5,
  headline6,
  caption,
  overline,
  subtitle1,
  subtitle2,
  bodyText1,
  bodyText2,
  button
}
