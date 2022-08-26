import 'package:ds_gallery/presentation/core/component/atom/button/dsg_button_widget.dart';
import 'package:ds_gallery/presentation/core/component/atom/text_field/dsg_text_form_field_widget.dart';
import 'package:ds_gallery/presentation/core/extension/context_extension.dart';
import 'package:ds_gallery/presentation/core/theme/foundation/dimen/dimen_constants.dart';
import 'package:ds_gallery/presentation/screen/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({
    Key? key,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  }) : super(key: key);

  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  Future onLoginClicked(BuildContext context) async {
    final viewModel = context.read<LoginViewModel>();

    await viewModel.submitForm();

    if (viewModel.isStateError) {
      if (!mounted) return;
      context.showSnackBar('Something went wrong, please try later');
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();

    return Form(
      key: viewModel.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DSGTextFormFieldWidget(
            controller: viewModel.emailController,
            hintText: 'Email',
            errorText: viewModel.hasNoUserFoundError
                ? 'No user found with this email address'
                : null,
            hasError: viewModel.hasNoUserFoundError,
            focusNode: widget.emailFocusNode,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (_) {
              widget.emailFocusNode.unfocus();
              FocusScope.of(context).requestFocus(widget.passwordFocusNode);
            },
            validator: (value) {
              if (value?.isEmpty == true) {
                return 'Email is empty';
              }
              return null;
            },
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: padding16),
          DSGTextFormFieldWidget(
            key: const ValueKey('password'),
            hintText: 'Password',
            errorText:
                viewModel.hasPasswordError ? 'Password is incorrect' : null,
            controller: viewModel.passwordController,
            hasError: viewModel.hasPasswordError,
            focusNode: widget.passwordFocusNode,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            onFieldSubmitted: (_) => onLoginClicked(context),
            validator: (value) {
              if (value?.isEmpty == true) {
                return 'Password is empty';
              }
              return null;
            },
          ),
          const SizedBox(height: padding24),
          DSGButtonWidget(
            isLoading: viewModel.isStateLoading,
            onPressed: () => onLoginClicked(context),
            label: 'Login',
          )
        ],
      ),
    );
  }
}
