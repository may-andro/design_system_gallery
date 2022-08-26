import 'package:ds_gallery/data/model/component.dart';
import 'package:ds_gallery/presentation/core/view_model/view_model_provider_widget.dart';
import 'package:ds_gallery/presentation/core/view_state/view_state_builder_widget.dart';
import 'package:ds_gallery/presentation/screen/app/dsg_app_view_model.dart';
import 'package:ds_gallery/presentation/screen/app/routes.dart';
import 'package:ds_gallery/presentation/screen/login/login_page.dart';
import 'package:ds_gallery/presentation/screen/preview/preview_page.dart';
import 'package:ds_gallery/presentation/screen/splash/splash_page.dart';
import 'package:ds_gallery/presentation/screen/unknown/error_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animations/animations.dart';

import '../dashboard/dashboard_page.dart';

bool get isDarkMode {
  return WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
}

class DSApp extends StatelessWidget {
  const DSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProviderWidget<DSGAppViewModel>(
      onViewModelProvided: (viewModel) {
        viewModel.onInit(WidgetsBinding.instance.window.platformBrightness);
      },
      builder: (context, viewModel, child) {
        final sharedZAxisTransitionBuilder = SharedAxisPageTransitionsBuilder(
          fillColor: viewModel.dsgTheme.getColorPalette(isDarkMode).background,
          transitionType: SharedAxisTransitionType.scaled,
        );

        return MaterialApp(
          restorationScopeId: 'DesignSystemGallery',
          onGenerateTitle: (BuildContext context) => 'Design System Gallery',
          theme: viewModel.dsgTheme.lightTheme.copyWith(
            pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                for (var type in TargetPlatform.values)
                  type: sharedZAxisTransitionBuilder,
              },
            ),
          ),
          darkTheme: viewModel.dsgTheme.darkTheme.copyWith(
            pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                for (var type in TargetPlatform.values)
                  type: sharedZAxisTransitionBuilder,
              },
            ),
          ),
          home: _buildHome(context),
          builder: (context, child) => child ?? const SizedBox.shrink(),
          initialRoute: loginRoute,
          onGenerateRoute: _generateRoute,
        );
      },
    );
  }

  Route<dynamic>? _generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    final routesMap = <String, MaterialPageRoute>{
      loginRoute: MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: routeSettings,
      ),
      dashboardRoute: MaterialPageRoute(
        builder: (_) => const DashboardPage(),
        settings: routeSettings,
      ),
      previewRoute: MaterialPageRoute(
        builder: (_) {
          if (args is Component) {
            return PreviewPage(component: args);
          }
          return const UnknownPage();
        },
        settings: routeSettings,
      ),
    };
    return routesMap[routeSettings.name];
  }

  Widget _buildHome(BuildContext context) {
    final viewModel = context.watch<DSGAppViewModel>();
    final homeWidget =
        viewModel.isLoggedIn ? const DashboardPage() : const LoginPage();

    return ViewStateBuilderWidget(
      viewState: viewModel.viewState,
      loadingBuilder: (_) => const SplashPage(),
      builder: (_) => homeWidget,
    );
  }
}
