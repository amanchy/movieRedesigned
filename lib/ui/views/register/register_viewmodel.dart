import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  handleRegister() {
    print("object");
  }

  goToLoginScreen() {
    _navigationService.replaceWith(Routes.loginView);
  }
}
