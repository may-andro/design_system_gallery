import 'package:ds_gallery/data/component/foundation/typography/config/body1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/body2_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/caption_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/subtitle1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/subtitle2_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/typography_preview_widget.dart';
import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_config.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

const _atomicCategory = ComponentAtomicCategory.foundation;
const _componentCategory = ComponentCategory.typography;
const _baseConfigPath = 'lib/data/component/foundation/typography/config';

class GetTextFoundationUseCase {
  ComponentGroup execute() {
    return ComponentGroup(
      title: 'Typography',
      icon: Icons.abc,
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      components: _components,
      previewWidget: const TypographyPreviewWidget(),
    );
  }

  List<Component> get _components {
    return const [
      Component(
        title: 'Heading 1',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 1',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h1_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Heading 2',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 2',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h2_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Heading 3',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 3',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h3_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Heading 4',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 4',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h4_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Heading 5',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 5',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h5_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Heading 6',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Heading 6',
            widget: H1ConfigWidget(),
            widgetPath: '$_baseConfigPath/h6_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Subtitle 1',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Subtitle 1',
            widget: Subtitle1ConfigWidget(),
            widgetPath: '$_baseConfigPath/subtitle1_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Subtitle 2',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Subtitle 2',
            widget: Subtitle2ConfigWidget(),
            widgetPath: '$_baseConfigPath/subtitle2_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Body 1',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Body 1',
            widget: Body1ConfigWidget(),
            widgetPath: '$_baseConfigPath/body1_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Body 2',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Body 2',
            widget: Body2ConfigWidget(),
            widgetPath: '$_baseConfigPath/body2_config_widget.dart',
            description: '',
          ),
        ],
      ),
      Component(
        title: 'Caption',
        description: 'TODO',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Caption',
            widget: CaptionConfigWidget(),
            widgetPath: '$_baseConfigPath/caption_config_widget.dart',
            description: '',
          ),
        ],
      ),
    ];
  }
}
