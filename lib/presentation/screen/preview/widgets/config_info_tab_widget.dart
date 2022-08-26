import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/preview/widgets/expandable_config_list_widget.dart';
import 'package:flutter/material.dart';

class ConfigInfoTabWidget extends StatelessWidget {
  const ConfigInfoTabWidget({
    Key? key,
    required this.component,
  }) : super(key: key);
  final Component component;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: padding16),
        _buildTitleText(context,
            'Description'),
        if (component.description?.isNotEmpty == true)
          _buildDescriptionText(context, component.description!),
        const SizedBox(height: padding16),
        const Divider(thickness: padding1),
        _buildTitleText(context, 'Configurations'),
        const SizedBox(height: padding16),
        ExpandableConfigListWidget(configs: component.configurations),
      ],
    );
  }

  Widget _buildTitleText(
    BuildContext context,
    String label,
  ) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding8,
      ),
      child: DSGTextWidget(
        label: label,
        textType: DSGTextType.headline6,
        textColor: colorScheme.onSurface,
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildDescriptionText(
    BuildContext context,
    String label,
  ) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: padding16,
        vertical: padding8,
      ),
      child: DSGTextWidget(
        label: label,
        textType: DSGTextType.subtitle2,
        textColor: colorScheme.onSurface,
        textAlign: TextAlign.left,
        maxLines: 15,
      ),
    );
  }
}
