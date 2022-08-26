import 'package:ds_gallery/data/model/component_atomic_category.dart';

import 'component_category.dart';
import 'component_config.dart';

class Component {
  const Component({
    required this.title,
    required this.category,
    required this.atomicCategory,
    required this.configurations,
    this.description,
  });

  final String title;
  final ComponentCategory category;
  final ComponentAtomicCategory atomicCategory;
  final List<ComponentConfig> configurations;
  final String? description;
}
