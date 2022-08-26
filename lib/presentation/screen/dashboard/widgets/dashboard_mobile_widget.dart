import 'package:ds_gallery/presentation/core/component/organism/tab_bar/dsg_tab_bar_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/filter_bar_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardMobileWidget extends StatelessWidget {
  const DashboardMobileWidget({
    required this.tabController,
    required this.tabs,
    required this.tabViews,
    Key? key,
  }) : super(key: key);

  final TabController tabController;
  final List<Widget> tabs;
  final List<Widget> tabViews;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DashboardViewModel>();
    return Column(
      children: [
        const SizedBox(height: padding16),
        SearchBarWidget(
          onSearchApplied: viewModel.onSearchApplied,
          textEditingController: viewModel.searchTextEditingController,
        ),
        const SizedBox(height: padding16),
        FilterBarWidget(
          filterSortOrder: viewModel.componentSortOrder,
          onSortApplied: viewModel.onSortApplied,
        ),
        const SizedBox(height: padding16),
        Expanded(
          child: TabBarView(controller: tabController, children: tabViews),
        ),
        DSGTabBarWidget(tabs: tabs, tabController: tabController),
      ],
    );
  }
}
