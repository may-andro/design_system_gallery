import 'package:ds_gallery/presentation/core/component/organism/container/dsg_error_container_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_phone_preview_container_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/tab_bar/dsg_tab_bar_widget.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/filter_bar_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/bar/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardDesktopWidget extends StatelessWidget {
  const DashboardDesktopWidget({
    required this.tabController,
    required this.tabs,
    required this.tabViews,
    required this.tabWidth,
    Key? key,
  }) : super(key: key);

  final TabController tabController;
  final List<Widget> tabs;
  final List<Widget> tabViews;
  final double tabWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildTabBar(context),
        Expanded(child: _buildTabView(context)),
      ],
    );
  }

  Widget _buildTabBar(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Container(
      width: tabWidth + 50 * (textScaleFactor - 1),
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const SizedBox(height: 24),
          SizedBox(
            height: 80,
            child: Image.asset('assets/images/demo_logo.png'),
          ),
          const SizedBox(height: 24),
          RotatedBox(
            quarterTurns: 1,
            child: DSGTabBarWidget(
              tabs: tabs
                  .map((widget) => RotatedBox(quarterTurns: 3, child: widget))
                  .toList(),
              tabController: tabController,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabView(BuildContext context) {
    const componentWidgetFlex = 4;
    const previewWidgetFlex = 6;

    final viewModel = context.read<DashboardViewModel>();
    return Row(
      children: [
        Expanded(
          flex: componentWidgetFlex,
          child: Column(
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
                child: RotatedBox(
                  quarterTurns: 1,
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: tabViews
                        .map((widget) =>
                            RotatedBox(quarterTurns: 3, child: widget))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: previewWidgetFlex,
          child: _buildMobilePreview(context),
        )
      ],
    );
  }

  Widget _buildMobilePreview(BuildContext context) {
    final viewModel = context.read<DashboardViewModel>();
    final selectedComponentGroup = viewModel.getSelectedComponentGroup(
      tabController.index,
    );
    if (selectedComponentGroup == null) {
      return const DSGErrorContainerWidget(
        errorTitle: 'Oops…',
        errorMessage:
            'No component is selected, please select one to see the preview.',
      );
    }
    return DSGPhonePreviewContainerWidget(
      componentGroup: selectedComponentGroup,
    );
  }
}
