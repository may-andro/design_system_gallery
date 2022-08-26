import 'package:ds_gallery/data/component/foundation/color/color_preview_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/background_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/black_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/error_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/focus_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey0_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey100_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey10_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey20_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey30_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey40_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey50_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey60_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey70_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey80_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/grey90_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/hint_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/info_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/on_background_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/on_error_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/on_primary_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/on_secondary_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/on_surface_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/primary_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/primary_varient_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/secondary_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/secondary_varient_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/surface_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/warning_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/white_color_config_widget.dart';
import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_config.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

const _atomicCategory = ComponentAtomicCategory.foundation;
const _componentCategory = ComponentCategory.color;
const _baseConfigPath = 'lib/data/component/foundation/color/config';

class GetColorFoundationUseCase {
  ComponentGroup execute() {
    return ComponentGroup(
      title: 'Colors',
      icon: Icons.color_lens,
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      components: _components,
      previewWidget: const ColorPreviewWidget(),
    );
  }

  List<Component> get _components {
    return const [
      Component(
        title: 'Primary',
        description:
            'A primary color is the color displayed most frequently across your app/'
            's screens and components.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Primary Color',
            widget: PrimaryColorConfigWidget(),
            widgetPath: '$_baseConfigPath/primary_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Primary Variant',
        description:
            'A primary variant color is light version of Primary color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Primary Variant',
            widget: PrimaryVariantColorConfigWidget(),
            widgetPath:
                '$_baseConfigPath/primary_varient_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'On Primary',
        description: 'A contrast color used over the Primary color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'On Primary',
            widget: OnPrimaryColorConfigWidget(),
            widgetPath: '$_baseConfigPath/on_primary_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Secondary',
        description:
            'A secondary color provides more ways to accent and distinguish your product. It should be applied sparingly to accent select parts of your UI.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Secondary',
            widget: SecondaryColorConfigWidget(),
            widgetPath: '$_baseConfigPath/secondary_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Secondary Variant',
        description: 'A lighter shade of Secondary color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Secondary Variant',
            widget: SecondaryVariantColorConfigWidget(),
            widgetPath:
                '$_baseConfigPath/secondary_varient_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'On Secondary',
        description: 'A contrast color used over the Secondary color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'On Secondary',
            widget: OnSecondaryColorConfigWidget(),
            widgetPath:
                '$_baseConfigPath/on_secondary_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Surface',
        description:
            'Surface colors affect surfaces of components, such as cards, sheets, and menus.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Surface',
            widget: SurfaceColorConfigWidget(),
            widgetPath: '$_baseConfigPath/surface_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'On Surface',
        description: 'A contrast color used over the Surface color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'On Surface',
            widget: OnSurfaceColorConfigWidget(),
            widgetPath: '$_baseConfigPath/on_surface_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Background',
        description: 'The background color appears behind scrollable content.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Background',
            widget: BackgroundColorConfigWidget(),
            widgetPath: '$_baseConfigPath/background_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'On Background',
        description: 'A contrast color used over the Background color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'On Background',
            widget: OnBackgroundColorConfigWidget(),
            widgetPath:
                '$_baseConfigPath/on_background_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Error',
        description:
            'Error color indicates errors in components, such as invalid text in a text field.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Error',
            widget: ErrorColorConfigWidget(),
            widgetPath: '$_baseConfigPath/error_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'On Error',
        description: 'A contrast color used over the Error color.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'On Error',
            widget: OnErrorColorConfigWidget(),
            widgetPath: '$_baseConfigPath/on_error_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Warning',
        description:
            'A color used to convey warning for product related features.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Warning',
            widget: WarningColorConfigWidget(),
            widgetPath: '$_baseConfigPath/warning_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Info',
        description:
            'A color used to convey information for product related features.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Info',
            widget: InfoColorConfigWidget(),
            widgetPath: '$_baseConfigPath/info_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Hint',
        description:
            'A color used to convey hints for product related features.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Hint',
            widget: HintColorConfigWidget(),
            widgetPath: '$_baseConfigPath/hint_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Focus',
        description:
            'A color used to convey focus for product related features.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Focus',
            widget: FocusColorConfigWidget(),
            widgetPath: '$_baseConfigPath/focus_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey0',
        description: 'A lightest shade of grey which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey0',
            widget: Grey0ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey0_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey10',
        description:
            'The lightest shade of grey with opacity of 10% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey10',
            widget: Grey10ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey10_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey20',
        description:
            'The shade of grey with opacity of 20% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey20',
            widget: Grey20ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey20_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey30',
        description:
            'The shade of grey with opacity of 30% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey30',
            widget: Grey30ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey30_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey40',
        description:
            'The shade of grey with opacity of 40% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey40',
            widget: Grey40ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey40_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey50',
        description:
            'The shade of grey with opacity of 50% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey50',
            widget: Grey50ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey50_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey60',
        description:
            'The shade of grey with opacity of 60% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey60',
            widget: Grey60ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey60_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey70',
        description:
            'The shade of grey with opacity of 70% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey70',
            widget: Grey70ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey70_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey80',
        description:
            'The dark shade of grey with opacity of 80% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey80',
            widget: Grey80ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey80_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey90',
        description:
            'The dark shade of grey with opacity of 90% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey90',
            widget: Grey90ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey90_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Grey100',
        description:
            'The darkest shade of grey with opacity of 100% which can used in texts.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Grey100',
            widget: Grey100ColorConfigWidget(),
            widgetPath: '$_baseConfigPath/grey100_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'White',
        description: 'The white color for the DS with hex code: 0xFFE2E2E2.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'White',
            widget: WhiteColorConfigWidget(),
            widgetPath: '$_baseConfigPath/white_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
      Component(
        title: 'Black',
        description: 'The white color for the DS with hex code: 0xFF1B1B1B.',
        atomicCategory: _atomicCategory,
        category: _componentCategory,
        configurations: [
          ComponentConfig(
            title: 'Black',
            widget: BlackColorConfigWidget(),
            widgetPath: '$_baseConfigPath/black_color_config_widget.dart',
            description: 'Add some more details here',
          ),
        ],
      ),
    ];
  }
}
