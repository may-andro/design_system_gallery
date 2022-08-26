import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

class GetAllMoleculeComponentGroupUseCase {
  List<ComponentGroup> execute() {
    const atomicCaterogry = ComponentAtomicCategory.molecule;
    return [
      ComponentGroup(
        title: 'Molecule ComponentGroup 1',
        icon: Icons.abc_outlined,
        atomicCategory: atomicCaterogry,
        category: ComponentCategory.button,
        components: const [
          Component(
            title: 'Molecule Component 1',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.button,
            configurations: [],
          ),
          Component(
            title: 'Molecule Component 2',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.button,
            configurations: [],
          ),
        ],
        previewWidget: Container(
          color: Colors.orange,
          child: const Text('Molecule Component Group 1'),
        ),
      ),
      ComponentGroup(
        title: 'Molecule Component Group 2',
        icon: Icons.abc_outlined,
        atomicCategory: atomicCaterogry,
        category: ComponentCategory.text,
        components: const [
          Component(
            title: 'Molecule Component 1',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.text,
            configurations: [],
          ),
          Component(
            title: 'Molecule Component 2',
            description: 'Description',
            atomicCategory: atomicCaterogry,
            category: ComponentCategory.text,
            configurations: [],
          ),
        ],
        previewWidget: Container(
          color: Colors.green,
          child: const Text('Molecule Component Group 2'),
        ),
      ),
    ];
  }
}
