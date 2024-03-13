import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'login_view.form.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  handleLogin(context) {
    if (emailValue != "" && passwordValue != "") {
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fill required fields')),
      );
    }
  }

  goToRegisterScreen() {
    _navigationService.replaceWith(Routes.registerView);
  }
}
