import 'package:ds_gallery/data/model/component_config.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/screen/preview/preview_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExpandableConfigListWidget extends StatelessWidget {
  const ExpandableConfigListWidget({
    Key? key,
    required this.configs,
  }) : super(key: key);

  final List<ComponentConfig> configs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: configs.length,
      itemBuilder: (ctx, pos) => _buildExpansionPanel(ctx, configs[pos]),
    );
  }

  Widget _buildExpansionPanel(BuildContext context, ComponentConfig config) {
    final viewModel = context.read<PreviewViewModel>();
    final colorScheme = Theme.of(context).colorScheme;
    final isSelected = viewModel.isSelectedComponentConfig(config);
    final backgroundColor =
        isSelected ? colorScheme.onBackground : colorScheme.surface;

    return ListTile(
      key: ValueKey(config.title),
      onTap: () {
        viewModel.selectedComponentConfig = config;
      },
      tileColor: backgroundColor,
      title: DSGTextWidget(
        label: config.title,
        textType: DSGTextType.headline5,
        textColor: colorScheme.onSurface,
      ),
      subtitle: DSGTextWidget(
        label: config.description,
        textType: DSGTextType.caption,
        textColor: colorScheme.onSurface,
        maxLines: 3,
      ),
    );
  }
}
