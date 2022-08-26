import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:flutter/material.dart';

import 'component.dart';

class ComponentGroup {
  const ComponentGroup({
    required this.title,
    required this.icon,
    required this.category,
    required this.atomicCategory,
    required this.components,
    required this.previewWidget,
  });

  final String title;
  final IconData icon;
  final ComponentCategory category;
  final ComponentAtomicCategory atomicCategory;
  final List<Component> components;
  final Widget previewWidget;
}
