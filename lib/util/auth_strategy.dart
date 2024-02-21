import 'package:ment09_authentication_form/service/auth_service.dart';

abstract class AuthStrategy {
  void invoke();
}

class AuthStrategyAuthorization extends AuthStrategy {
  late AuthService _service;

  AuthStrategyImpl() {
    _service = AuthService.getInstance()!;
  }

  @override
  void invoke() {
    // TODO: implement invoke
  }
}

class AuthStrategyRegister extends AuthStrategy {
  late AuthService _service;

  AuthStrategyImpl() {
    _service = AuthService.getInstance()!;
  }

  @override
  void invoke() {
    // TODO: implement invoke
  }
}
