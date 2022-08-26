import 'package:ds_gallery/data/component/foundation/typography/config/body1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/body2_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/caption_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h2_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h3_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h4_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h5_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/h6_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/subtitle1_config_widget.dart';
import 'package:ds_gallery/data/component/foundation/typography/config/subtitle2_config_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/list/dsg_component_group_preview_list_widget.dart';
import 'package:flutter/material.dart';

class TypographyPreviewWidget extends StatelessWidget {
  const TypographyPreviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const widgets = [
      H1ConfigWidget(),
      H2ConfigWidget(),
      H3ConfigWidget(),
      H4ConfigWidget(),
      H5ConfigWidget(),
      H6ConfigWidget(),
      Subtitle1ConfigWidget(),
      Subtitle2ConfigWidget(),
      Body1ConfigWidget(),
      Body2ConfigWidget(),
      CaptionConfigWidget()
    ];

    return DSGComponentGroupPreviewListWidget(
      widgets: widgets,
    );
  }
}
