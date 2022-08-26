import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/component_list_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/empty_component_group_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ComponentGroupStaggeredListWidget extends StatelessWidget {
  const ComponentGroupStaggeredListWidget({
    Key? key,
    required this.onComponentClicked,
    required this.componentGroups,
  }) : super(key: key);

  final Function(Component) onComponentClicked;
  final List<ComponentGroup>? componentGroups;

  @override
  Widget build(BuildContext context) {
    const crossAxisCount = 2;
    final componentGroups = this.componentGroups;

    if (componentGroups == null || componentGroups.isEmpty == true) {
      return const EmptyComponentGroupListWidget();
    }

    return Padding(
      key: const Key('staggeredListViewWidgetKey'),
      padding: const EdgeInsets.symmetric(horizontal: padding16),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: padding16,
        mainAxisSpacing: padding16,
        itemCount: componentGroups.length,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(index == 0 ? crossAxisCount : 1);
        },
        itemBuilder: (_, index) {
          return _ComponentGroupItemWidget(
            componentGroup: componentGroups[index],
            onComponentClicked: onComponentClicked,
          );
        },
      ),
    );
  }
}

class _ComponentGroupItemWidget extends StatelessWidget {
  const _ComponentGroupItemWidget({
    required this.componentGroup,
    required this.onComponentClicked,
  });

  final ComponentGroup componentGroup;
  final Function(Component) onComponentClicked;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      borderRadius: BorderRadius.circular(padding12),
      clipBehavior: Clip.antiAlias,
      color: colorScheme.surface,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ComponentGroupHeader(label: componentGroup.title),
          Divider(
            height: padding2,
            thickness: padding2,
            color: colorScheme.background,
          ),
          Flexible(
            child: ComponentListWidget(
              componentGroup: componentGroup,
              onItemClicked: onComponentClicked,
              horizontalPadding: padding12,
            ),
          ),
        ],
      ),
    );
  }
}

class _ComponentGroupHeader extends StatelessWidget {
  const _ComponentGroupHeader({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: colorScheme.onBackground,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(padding12),
            child: Icon(Icons.category),
          ),
          Flexible(child: _buildTitleText(context)),
        ],
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: padding8),
      child: DSGTextWidget(
        label: label,
        textColor: colorScheme.onSurface,
        textType: DSGTextType.headline4,
        maxLines: 3,
      ),
    );
  }
}
