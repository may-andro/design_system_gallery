import 'package:ds_gallery/presentation/core/view_model/base_view_model.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  Function()? _onSuccessfulLogin;

  bool _hasPasswordError = false;

  bool _hasNoUserFoundError = false;

  bool get hasPasswordError => _hasPasswordError;

  bool get hasNoUserFoundError => _hasNoUserFoundError;

  void onInit(Function() onSuccessfulLogin) {
    _onSuccessfulLogin = onSuccessfulLogin;
    setSuccessState();
  }

  Future<void> login() async {
    _hasPasswordError = false;
    _hasNoUserFoundError = false;

    setLoadingState();

    Future.delayed(const Duration(seconds: 1), () {
      _onSuccessfulLogin?.call();
      setSuccessState();
    });
  }

  Future<void> submitForm() async {
    if (formKey.currentState?.validate() == true) {
      await login();
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
