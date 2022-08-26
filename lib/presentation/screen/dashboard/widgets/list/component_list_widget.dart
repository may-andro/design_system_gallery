import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/data/model/component_group.dart';
import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

class ComponentListWidget extends StatelessWidget {
  const ComponentListWidget({
    Key? key,
    required this.componentGroup,
    required this.onItemClicked,
    required this.horizontalPadding,
  }) : super(key: key);

  final ComponentGroup componentGroup;
  final Function(Component) onItemClicked;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        return _ComponentItemWidget(
          component: componentGroup.components[index],
          onClicked: onItemClicked,
          startPadding: horizontalPadding,
        );
      },
      itemCount: componentGroup.components.length,
    );
  }
}

class _ComponentItemWidget extends StatelessWidget {
  const _ComponentItemWidget({
    Key? key,
    required this.component,
    required this.onClicked,
    required this.startPadding,
  }) : super(key: key);

  final Component component;
  final Function(Component) onClicked;
  final double startPadding;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: InkWell(
        onTap: () {
          onClicked(component);
        },
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: startPadding,
            top: padding8,
            end: padding8,
          ),
          child: _buildComponentDetail(context),
        ),
      ),
    );
  }

  Widget _buildComponentDetail(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSGTextWidget(
          textType: DSGTextType.subtitle1,
          label: component.title,
          textColor: colorScheme.onSurface,
        ),
        DSGTextWidget(
          textType: DSGTextType.bodyText1,
          label: component.description ?? 'No description',
          textColor: colorScheme.onSurface.withOpacity(0.5),
        ),
        const SizedBox(height: padding16),
        Divider(
          thickness: padding1,
          height: padding1,
          color: colorScheme.background,
        ),
      ],
    );
  }
}
