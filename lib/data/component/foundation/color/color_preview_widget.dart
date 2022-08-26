import 'package:ds_gallery/data/component/foundation/color/config/background_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/black_color_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/color/config/error_color_config_widget.dart';
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
import 'package:ds_gallery/presentation/core/component/organism/list/dsg_component_group_preview_list_widget.dart';
import 'package:flutter/material.dart';

import 'config/focus_color_config_widget.dart';

class ColorPreviewWidget extends StatelessWidget {
  const ColorPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const widgets = [
      SizedBox(
        height: kToolbarHeight,
        child: PrimaryColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: PrimaryVariantColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: OnPrimaryColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: SecondaryColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: SecondaryVariantColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: OnSecondaryColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: SurfaceColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: OnSurfaceColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: BackgroundColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: OnBackgroundColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: ErrorColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: OnErrorColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: WarningColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: InfoColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: HintColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: FocusColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey0ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey10ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey20ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey30ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey40ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey50ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey60ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey70ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey80ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey90ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: Grey100ColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: WhiteColorConfigWidget(),
      ),
      SizedBox(
        height: kToolbarHeight,
        child: BlackColorConfigWidget(),
      ),
    ];

    return DSGComponentGroupPreviewListWidget(
      widgets: widgets,
    );
  }
}
