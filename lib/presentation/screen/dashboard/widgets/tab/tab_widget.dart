import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_responsive_container_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/component_group_expandable_list_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/list/component_group_staggered_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    required this.componentGroups,
    required this.onComponentGroupClicked,
    required this.onComponentClicked,
    required this.verifyIfExpanded,
    Key? key,
  }) : super(key: key);

  final List<ComponentGroup>? componentGroups;
  final Function(Component) onComponentClicked;
  final Function(ComponentGroup) onComponentGroupClicked;
  final bool Function(ComponentGroup) verifyIfExpanded;

  @override
  Widget build(BuildContext context) {
    return DSGResponsiveContainerWidget(
      mobile: (context) => _buildExpandableListView(context),
      tablet: (context) => _buildStaggeredListView(context),
      desktop: (context) => _buildExpandableListView(context),
    );
  }

  Widget _buildStaggeredListView(BuildContext context) {
    return ComponentGroupStaggeredListWidget(
      onComponentClicked: onComponentClicked,
      componentGroups: componentGroups,
    );
  }

  Widget _buildExpandableListView(BuildContext context) {
    return ComponentGroupExpandableListWidget(
      onComponentClicked: onComponentClicked,
      onComponentGroupClicked: onComponentGroupClicked,
      componentGroups: componentGroups,
      verifyIfExpanded: verifyIfExpanded,
    );
  }
}
