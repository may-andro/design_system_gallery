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
import 'package:ds_gallery/presentation/core/component/atom/misc/dsg_divider.dart';
import 'package:ds_gallery/presentation/core/component/organism/list/dsg_component_group_preview_list_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class ButtonPreviewWidget extends StatelessWidget {
  const ButtonPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const widgets = [
      SizedBox(height: padding16),
      RegularFilledButtonConfigWidget(),
      LargeFilledButtonConfigWidget(),
      SmallFilledButtonConfigWidget(),
      IconFilledButtonConfigWidget(),
      LoadingFilledButtonConfigWidget(),
      DisabledFilledButtonConfigWidget(),
      DSGDivider(),
      RegularGhostButtonConfigWidget(),
      LargeGhostButtonConfigWidget(),
      SmallGhostButtonConfigWidget(),
      IconGhostButtonConfigWidget(),
      LoadingGhostButtonConfigWidget(),
      DisabledGhostButtonConfigWidget(),
      DSGDivider(),
      RegularOutlinedButtonConfigWidget(),
      LargeOutlinedButtonConfigWidget(),
      SmallOutlinedButtonConfigWidget(),
      IconOutlinedButtonConfigWidget(),
      LoadingOutlinedButtonConfigWidget(),
      DisabledOutlinedButtonConfigWidget(),
      DSGDivider(),
      RegularIconButtonConfigWidget(),
      LargeIconButtonConfigWidget(),
      SmallIconButtonConfigWidget(),
      LoadingIconButtonConfigWidget(),
      DisabledIconButtonConfigWidget(),
      DSGDivider(),
      FabConfigWidget(),
      MiniFabConfigWidget(),
      LoadingFabConfigWidget(),
      DisabledFabConfigWidget(),
      DSGDivider(),
    ];

    return DSGComponentGroupPreviewListWidget(widgets: widgets);
  }
}
