import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/component_list_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/empty_component_group_list_widget.dart';
import 'package:flutter/material.dart';

class ComponentGroupExpandableListWidget extends StatelessWidget {
  const ComponentGroupExpandableListWidget({
    Key? key,
    required this.onComponentClicked,
    required this.onComponentGroupClicked,
    required this.componentGroups,
    required this.verifyIfExpanded,
  }) : super(key: key);

  final Function(Component) onComponentClicked;
  final Function(ComponentGroup) onComponentGroupClicked;
  final List<ComponentGroup>? componentGroups;
  final bool Function(ComponentGroup) verifyIfExpanded;

  @override
  Widget build(BuildContext context) {
    final componentGroups = this.componentGroups;
    if (componentGroups == null || componentGroups.isEmpty == true) {
      return const EmptyComponentGroupListWidget();
    }

    return SingleChildScrollView(
      key: const Key('expandableListViewWidgetKey'),
      child: ExpansionPanelList(
        key: Key(
          'ComponentGroupExpendableListWidget: ${componentGroups.length}',
        ),
        animationDuration: const Duration(milliseconds: 300),
        expandedHeaderPadding: const EdgeInsets.all(padding10),
        elevation: 0,
        expansionCallback: (int index, bool isExpanded) {
          if (isExpanded) return;
          onComponentGroupClicked(componentGroups[index]);
        },
        children: componentGroups
            .map((item) => _buildExpansionPanel(context, item))
            .toList(),
      ),
    );
  }

  ExpansionPanel _buildExpansionPanel(
    BuildContext context,
    ComponentGroup componentGroup,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    final isExpanded = verifyIfExpanded(componentGroup);
    return ExpansionPanel(
      isExpanded: isExpanded,
      canTapOnHeader: true,
      backgroundColor:
          isExpanded ? colorScheme.onBackground : colorScheme.surface,
      headerBuilder: (_, __) {
        return _ComponentGroupHeader(componentGroup: componentGroup);
      },
      body: ComponentListWidget(
        componentGroup: componentGroup,
        onItemClicked: onComponentClicked,
        horizontalPadding: padding24,
      ),
    );
  }
}

class _ComponentGroupHeader extends StatelessWidget {
  const _ComponentGroupHeader({
    required this.componentGroup,
  });

  final ComponentGroup componentGroup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: Key('componentGroupHeaderKey: ${componentGroup.title}'),
      padding: const EdgeInsetsDirectional.all(padding16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(componentGroup.icon),
          const SizedBox(width: padding16),
          Flexible(child: _buildTextContainer(context)),
        ],
      ),
    );
  }

  Widget _buildTextContainer(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSGTextWidget(
          textType: DSGTextType.headline4,
          label: componentGroup.title,
          textColor: colorScheme.onSurface,
        ),
      ],
    );
  }
}
