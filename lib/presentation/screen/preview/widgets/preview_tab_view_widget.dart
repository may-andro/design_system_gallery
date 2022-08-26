import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:flutter/material.dart';

enum PreviewTabType { info, ios, android, code }

extension PreviewTabTypeExtension on PreviewTabType {
  String toTypeString(BuildContext context) {
    switch (this) {
      case PreviewTabType.info:
        return 'Info';
      case PreviewTabType.ios:
        return 'iOS';
      case PreviewTabType.android:
        return 'Android';
      case PreviewTabType.code:
        return 'Source Code';
    }
  }
}

class PreviewTabViewWidget extends StatefulWidget {
  const PreviewTabViewWidget({
    Key? key,
    required this.tabTypeList,
    required this.widgetList,
    required this.onTabChanged,
    this.selectedComponentPreviewTabType,
  }) : super(key: key);

  final List<PreviewTabType> tabTypeList;
  final List<Widget> widgetList;
  final Function(PreviewTabType) onTabChanged;
  final PreviewTabType? selectedComponentPreviewTabType;

  @override
  _PreviewTabViewWidgetState createState() =>
      _PreviewTabViewWidgetState();
}

class _PreviewTabViewWidgetState
    extends State<PreviewTabViewWidget> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    length: widget.tabTypeList.length,
  );

  @override
  void initState() {
    _tabController.addListener(() {
      widget.onTabChanged(widget.tabTypeList[_tabController.index]);
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final index = widget.tabTypeList.indexWhere((element) {
      return element == widget.selectedComponentPreviewTabType;
    });
    if (index != _tabController.index) {
      _tabController.animateTo(
        index == -1 ? 0 : index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabBar(context),
        const SizedBox(height: padding16),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.widgetList,
          ),
        ),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return TabBar(
      isScrollable: true,
      unselectedLabelColor: Theme.of(context).disabledColor,
      labelColor: colorScheme.onPrimary,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(padding16),
      ),
      labelStyle: textTheme.subtitle1?.copyWith(
        color: colorScheme.onSurface,
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: padding16),
      tabs: widget.tabTypeList
          .map((element) => Tab(text: element.toTypeString(context)))
          .toList(),
      controller: _tabController,
    );
  }
}
