import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

class GetAllOrganismComponentGroupUseCase {
  List<ComponentGroup> execute() {
    const atomicCaterogry = ComponentAtomicCategory.organism;
    return [
      ComponentGroup(
        title: 'Organism ComponentGroup 1',
        icon: Icons.abc_outlined,
        atomicCategory: atomicCaterogry,
        category: ComponentCategory.button,
        components: const [
          Component(
            title: 'Organism Component 1',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.button,
            configurations: [],
          ),
          Component(
            title: 'Organism Component 2',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.button,
            configurations: [],
          ),
        ],
        previewWidget: Container(
          color: Colors.pink,
          child: const Text('Organism Component Group 1'),
        ),
      ),
      ComponentGroup(
        title: 'Organism Component Group 2',
        icon: Icons.abc_outlined,
        atomicCategory: atomicCaterogry,
        category: ComponentCategory.text,
        components: const [
          Component(
            title: 'Organism Component 1',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.text,
            configurations: [],
          ),
          Component(
            title: 'Organism Component 2',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.text,
            configurations: [],
          ),
        ],
        previewWidget: Container(
          color: Colors.blue,
          child: const Text('Organism Component Group 2'),
        ),
      ),
    ];
  }
}
