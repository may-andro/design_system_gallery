import 'package:ds_gallery/data/component/atom/button/button_preview_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/fab/disabled_fab_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/fab/fab_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/fab/loading_fab_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/fab/mini_fab_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/disabled_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/icon_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/large_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/loading_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/regular_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/filled_button/small_filled_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/disabled_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/icon_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/large_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/loading_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/regular_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/ghost_button/small_ghost_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/icon_button/disabled_icon_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/icon_button/large_icon_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/icon_button/loading_icon_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/icon_button/regular_icon_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/icon_button/small_icon_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/disabled_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/icon_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/large_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/loading_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/regular_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/component/atom/button/config/outlined_button/small_outlined_button_config_widget.dart';
import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_atomic_category.dart';
import 'package:ds_gallery/data/model/component_category.dart';
import 'package:ds_gallery/data/model/component_config.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:flutter/material.dart';

const _atomicCategory = ComponentAtomicCategory.atom;
const _componentCategory = ComponentCategory.button;
const _baseConfigPath = 'lib/data/component/atom/button/config';
const _fabConfigPath = '$_baseConfigPath/fab';
const _filledButtonConfigPath = '$_baseConfigPath/filled_button';
const _ghostButtonConfigPath = '$_baseConfigPath/ghost_button';
const _iconButtonConfigPath = '$_baseConfigPath/icon_button';
const _outlinedButtonConfigPath = '$_baseConfigPath/outlined_button';

class GetButtonAtomComponentGroupUseCase {
  ComponentGroup execute() {
    return ComponentGroup(
      title: 'Button',
      icon: Icons.abc,
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      components: [
        _filledButtonComponent,
        _ghostButtonComponent,
        _outlinedButtonComponent,
        _iconButtonComponent,
        _fabComponent,
      ],
      previewWidget: const ButtonPreviewWidget(),
    );
  }

  Component get _fabComponent {
    return const Component(
      title: 'FAB Button',
      description: 'Add something here',
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      configurations: [
        ComponentConfig(
          title: 'FAB Button',
          description: 'TODO',
          widget: FabConfigWidget(),
          widgetPath: '$_fabConfigPath/fab_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Mini Fab Button',
          description: 'TODO',
          widget: MiniFabConfigWidget(),
          widgetPath: '$_fabConfigPath/mini_fab_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Loading FAB Button',
          description: 'TODO',
          widget: LoadingFabConfigWidget(),
          widgetPath: '$_fabConfigPath/loading_fab_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Disabled FAB Button',
          description: 'TODO',
          widget: DisabledFabConfigWidget(),
          widgetPath: '$_fabConfigPath/disabled_fab_button_config_widget.dart',
        ),
      ],
    );
  }

  Component get _filledButtonComponent {
    return const Component(
      title: 'Filled Button',
      description: 'Add something here',
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      configurations: [
        ComponentConfig(
          title: 'Regular Filled Button',
          description: 'In this mode the button has buttonType property',
          widget: RegularFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/regular_filled_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Large Filled Button',
          description: 'In this mode the button has buttonType property',
          widget: LargeFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/large_filled_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Small Filled Button',
          description: 'In this mode the button has buttonType property',
          widget: SmallFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/small_filled_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Icon Filled Button',
          description: 'In this mode the button has icon property',
          widget: IconFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/icon_filled_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Loading Filled Button',
          description: 'In this mode the button has isLoading property',
          widget: LoadingFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/loading_filled_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Disabled Filled Button',
          description: 'In this mode the onPress property is null',
          widget: DisabledFilledButtonConfigWidget(),
          widgetPath:
              '$_filledButtonConfigPath/disabled_filled_button_config_widget.dart',
        ),
      ],
    );
  }

  Component get _ghostButtonComponent {
    return const Component(
      title: 'Ghost Button',
      description: 'Add something here',
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      configurations: [
        ComponentConfig(
          title: 'Regular Ghost Button',
          description: 'TODO',
          widget: RegularGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/regular_ghost_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Large Ghost Button',
          description: 'TODO',
          widget: LargeGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/large_ghost_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Small Ghost Button',
          description: 'TODO',
          widget: SmallGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/small_ghost_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Icon Ghost Button',
          description: 'TODO',
          widget: IconGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/icon_ghost_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Loading Ghost Button',
          description: 'TODO',
          widget: LoadingGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/loading_ghost_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Disabled Ghost Button',
          description: 'TODO',
          widget: DisabledGhostButtonConfigWidget(),
          widgetPath:
              '$_ghostButtonConfigPath/disabled_ghost_button_config_widget.dart',
        ),
      ],
    );
  }

  Component get _outlinedButtonComponent {
    return const Component(
      title: 'Outlined Button',
      description: 'Add something here',
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      configurations: [
        ComponentConfig(
          title: 'Regular Outlined Button',
          description: 'TODO',
          widget: RegularOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/regular_outlined_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Large Outlined Button',
          description: 'TODO',
          widget: LargeOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/large_outlined_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Small Outlined Button',
          description: 'TODO',
          widget: SmallOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/small_outlined_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Icon Outlined Button',
          description: 'TODO',
          widget: IconOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/icon_outlined_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Loading Outlined Button',
          description: 'TODO',
          widget: LoadingOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/loading_outlined_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Disabled Outlined Button',
          description: 'TODO',
          widget: DisabledOutlinedButtonConfigWidget(),
          widgetPath:
              '$_outlinedButtonConfigPath/disabled_outlined_button_config_widget.dart',
        ),
      ],
    );
  }

  Component get _iconButtonComponent {
    return const Component(
      title: 'Icon Button',
      description: 'Add something here',
      atomicCategory: _atomicCategory,
      category: _componentCategory,
      configurations: [
        ComponentConfig(
          title: 'Regular Icon Button',
          description: 'TODO',
          widget: RegularIconButtonConfigWidget(),
          widgetPath:
              '$_iconButtonConfigPath/regular_icon_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Large Icon Button',
          description: 'TODO',
          widget: LargeIconButtonConfigWidget(),
          widgetPath:
              '$_iconButtonConfigPath/large_icon_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Small Icon Button',
          description: 'TODO',
          widget: SmallIconButtonConfigWidget(),
          widgetPath:
              '$_iconButtonConfigPath/small_icon_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Loading Icon Button',
          description: 'TODO',
          widget: LoadingIconButtonConfigWidget(),
          widgetPath:
              '$_iconButtonConfigPath/loading_icon_button_config_widget.dart',
        ),
        ComponentConfig(
          title: 'Disabled Icon Button',
          description: 'TODO',
          widget: DisabledIconButtonConfigWidget(),
          widgetPath:
              '$_iconButtonConfigPath/disabled_icon_button_config_widget.dart',
        ),
      ],
    );
  }
}
