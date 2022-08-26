import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_responsive_container_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/tab_bar/dsg_tab_widget.dart';
import 'package:ds_gallery/presentation/core/view_model/view_model_provider_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_view_model.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/dashboard_desktop_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/dashboard_mobile_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/dashboard_tablet_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/widgets/tab/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../app/routes.dart';

const _tabCount = 4;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin, RestorationMixin {
  late TabController _tabController;

  RestorableInt tabIndex = RestorableInt(0);

  @override
  String get restorationId => 'dashboard_page';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(tabIndex, 'tab_index');
    _tabController.index = tabIndex.value;
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabCount, vsync: this)
      ..addListener(() {
        setState(() {
          tabIndex.value = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    tabIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelProviderWidget<DashboardViewModel>(
      onViewModelProvided: (viewModel) => viewModel.onInit(),
      builder: (context, viewModel, _) {
        return Scaffold(
          body: DSGResponsiveContainerWidget(
            mobile: (context) => _buildMobileView(context),
            tablet: (context) => _buildTabletView(context),
            desktop: (context) => _buildDesktopView(context),
          ),
        );
      },
    );
  }

  Widget _buildMobileView(BuildContext context) {
    return DashboardMobileWidget(
      tabController: _tabController,
      tabs: _buildTabs(),
      tabViews: _buildTabViews(context),
    );
  }

  Widget _buildTabletView(BuildContext context) {
    return DashboardTabletWidget(
      tabController: _tabController,
      tabs: _buildTabs(isVertical: true),
      tabViews: _buildTabViews(context),
    );
  }

  Widget _buildDesktopView(BuildContext context) {
    return DashboardDesktopWidget(
      tabController: _tabController,
      tabs: _buildTabs(isVertical: true),
      tabViews: _buildTabViews(context),
      tabWidth: 200,
    );
  }

  List<Widget> _buildTabs({bool isVertical = false}) {
    return [
      DSGTabWidget(
        isExpanded: _tabController.index == tabFoundationIndex,
        iconData: FontAwesomeIcons.paintbrush,
        title: 'Foundation',
        isVertical: isVertical,
        tabCount: _tabCount,
      ),
      DSGTabWidget(
        isExpanded: _tabController.index == tabAtomIndex,
        iconData: FontAwesomeIcons.atom,
        title: 'Atoms',
        tabCount: _tabCount,
        isVertical: isVertical,
      ),
      DSGTabWidget(
        isExpanded: _tabController.index == tabMoleculeIndex,
        iconData: FontAwesomeIcons.chartGantt,
        title: 'Molecule',
        tabCount: _tabCount,
        isVertical: isVertical,
      ),
      DSGTabWidget(
        isExpanded: _tabController.index == tabOrganismIndex,
        iconData: FontAwesomeIcons.diagramProject,
        title: 'Organism',
        tabCount: _tabCount,
        isVertical: isVertical,
      ),
    ];
  }

  List<Widget> _buildTabViews(BuildContext context) {
    final viewModel = context.watch<DashboardViewModel>();
    return [
      TabWidget(
        componentGroups: viewModel.searchedFoundations,
        onComponentGroupClicked: viewModel.setSelectedFoundation,
        onComponentClicked: (component) {
          goToNextPage(context, component);
        },
        verifyIfExpanded: viewModel.isSelectedFoundation,
      ),
      TabWidget(
        componentGroups: viewModel.searchedAtoms,
        onComponentGroupClicked: viewModel.setSelectedAtom,
        onComponentClicked: (component) {
          goToNextPage(context, component);
        },
        verifyIfExpanded: viewModel.isSelectedAtom,
      ),
      TabWidget(
        componentGroups: viewModel.searchedMolecules,
        onComponentGroupClicked: viewModel.setSelectedMolecule,
        onComponentClicked: (component) {
          goToNextPage(context, component);
        },
        verifyIfExpanded: viewModel.isSelectedMolecule,
      ),
      TabWidget(
        componentGroups: viewModel.searchedOrganisms,
        onComponentGroupClicked: viewModel.setSelectedOrganism,
        onComponentClicked: (component) {
          goToNextPage(context, component);
        },
        verifyIfExpanded: viewModel.isSelectedOrganism,
      ),
    ];
  }

  void goToNextPage(BuildContext context, Component component) {
    Navigator.pushNamed(context, previewRoute, arguments: component);
  }
}
