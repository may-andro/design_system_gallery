import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

class GetTextAtomComponentGroupUseCase {
  ComponentGroup execute() {
    return ComponentGroup(
      title: 'Text',
      icon: Icons.abc,
      atomicCategory: ComponentAtomicCategory.atom,
      category: ComponentCategory.text,
      components: const [
        Component(
          title: 'CLTextWidget',
          description:
              'This is basic text widget exposed out of CL. I has bunch of configuration properties to change its appearances',
          atomicCategory: ComponentAtomicCategory.atom,
          category: ComponentCategory.text,
          configurations: [],
        ),
        Component(
          title: 'CLRichTextWidget',
          description: 'Rich text widget exposed out of CL',
          atomicCategory: ComponentAtomicCategory.atom,
          category: ComponentCategory.text,
          configurations: [],
        ),
        Component(
          title: 'CLExpendableTextWidget',
          atomicCategory: ComponentAtomicCategory.atom,
          category: ComponentCategory.text,
          configurations: [],
        ),
        Component(
          title: 'CLHyperlinkTextWidget',
          atomicCategory: ComponentAtomicCategory.atom,
          category: ComponentCategory.text,
          configurations: [],
        ),
        Component(
          title: 'CLAutoSizingTextWidget',
          atomicCategory: ComponentAtomicCategory.atom,
          category: ComponentCategory.text,
          configurations: [],
        ),
      ],
      previewWidget: Container(
        color: Colors.cyan,
        child: const Text('Atom Component Group 1'),
      ),
    );
  }
}
