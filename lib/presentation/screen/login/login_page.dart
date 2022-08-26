import 'package:ds_gallery/presentation/core/component/atom/text/dsg_text_widget.dart';
import 'package:ds_gallery/presentation/core/component/organism/container/dsg_responsive_container_widget.dart';
import 'package:ds_gallery/presentation/core/view_model/view_model_provider_widget.dart';
import 'package:ds_gallery/presentation/screen/dashboard/dashboard_page.dart';
import 'package:ds_gallery/presentation/screen/login/login_view_model.dart';
import 'package:ds_gallery/presentation/screen/login/widget/login_form_widget.dart';
import 'package:flutter/material.dart';

const _imageContainerHeight = 300.0;
const _introductionTitleContainerHeight = 100.0;
const _loginFormHeightFactor = 0.4;
const _loginFormMobilePaddingFactor = 0.1;
const _loginFormTabletPaddingFactor = 0.2;
const _loginFormDesktopPaddingFactor = 0.05;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _listScrollController = ScrollController();

  @override
  void initState() {
    _emailFocusNode.addListener(_scrollToTop);
    _passwordFocusNode.addListener(_scrollToTop);

    super.initState();
  }

  Future<void> _scrollToTop() {
    if (!_listScrollController.hasClients) {
      return Future<void>.value();
    }

    return _listScrollController.animateTo(
      _imageContainerHeight + _introductionTitleContainerHeight,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelProviderWidget<LoginViewModel>(
      onViewModelProvided: (viewModel) => viewModel.onInit(goToDashboard),
      builder: (context, model, _) {
        return Scaffold(
          body: DSGResponsiveContainerWidget(
            mobile: (context) {
              return _mobileTabletLoginView(_loginFormMobilePaddingFactor);
            },
            tablet: (context) {
              return _mobileTabletLoginView(_loginFormTabletPaddingFactor);
            },
            desktop: (context) => _desktopLoginView(),
          ),
        );
      },
    );
  }

  void goToDashboard() {
    Navigator.pushAndRemoveUntil<DashboardPage>(
      context,
      MaterialPageRoute(
        builder: (_) => const DashboardPage(),
      ),
      (route) => false,
    );
  }

  Widget _mobileTabletLoginView(double loginPaddingFactor) {
    return Stack(
      children: [
        _buildLoginImage(_imageContainerHeight),
        ListView(
          controller: _listScrollController,
          children: [
            const SizedBox(height: _imageContainerHeight),
            _buildIntroductionTitle(),
            _buildLoginForm(loginPaddingFactor),
            _buildFakeBGContainer(),
          ],
        ),
      ],
    );
  }

  Widget _desktopLoginView() {
    const imageWidgetFlex = 6;
    const formWidgetFlex = 4;

    return Row(
      children: [
        Expanded(
          flex: imageWidgetFlex,
          child: _buildLoginImage(double.infinity),
        ),
        Expanded(
          flex: formWidgetFlex,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIntroductionTitle(),
              _buildLoginForm(_loginFormDesktopPaddingFactor),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildIntroductionTitle() {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: _introductionTitleContainerHeight,
      color: colorScheme.background,
      alignment: Alignment.bottomCenter,
      child: ListView(
        shrinkWrap: true,
        children: [
          DSGTextWidget(
            label: 'Component Gallery',
            textType: DSGTextType.headline2,
            textAlign: TextAlign.center,
            textColor: colorScheme.onSurface,
          ),
          DSGTextWidget(
            label: 'One Design, One System',
            textType: DSGTextType.overline,
            textAlign: TextAlign.center,
            textColor: colorScheme.onSurface,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm(double paddingFactor) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * _loginFormHeightFactor,
      padding: EdgeInsets.symmetric(
        horizontal: size.shortestSide * paddingFactor,
      ),
      color: colorScheme.background,
      child: LoginFormWidget(
        emailFocusNode: _emailFocusNode,
        passwordFocusNode: _passwordFocusNode,
      ),
    );
  }

  Widget _buildLoginImage(double height) {
    return Image.asset(
      'assets/images/demo_logo.png',
      height: height,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildFakeBGContainer() {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * (1 - _loginFormHeightFactor),
      color: colorScheme.background,
    );
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _listScrollController.dispose();
    super.dispose();
  }
}
