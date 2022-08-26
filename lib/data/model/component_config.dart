import 'package:flutter/material.dart';

class ComponentConfig {
  const ComponentConfig({
    required this.title,
    required this.description,
    required this.widget,
    required this.widgetPath,
  });

  final String title;
  final String description;
  final Widget widget;
  final String widgetPath;
}
