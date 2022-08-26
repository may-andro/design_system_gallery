import 'package:flutter/material.dart';

class DSGTabBarWidget extends StatelessWidget {
  const DSGTabBarWidget({
    required this.tabs,
    this.tabController,
    Key? key,
  }) : super(key: key);

  final List<Widget> tabs;
  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelPadding: EdgeInsets.zero,
      tabs: tabs,
      controller: tabController,
      indicatorColor: Colors.transparent,
    );
  }
}
