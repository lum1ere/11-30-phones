import 'package:ment09_authentication_form/entity/user.dart';
import 'package:ment09_authentication_form/util/user_dto.dart';
import 'package:ment09_authentication_form/repo/user_repository.dart';

class AuthService {
  static AuthService? _instance;
  User? userData;
  bool _authenticated = false;
  late InMemoryUserRepository _userRepository;

  AuthService() {
    _userRepository = InMemoryUserRepository.getInstance()!;
  }

  static AuthService getInstance() {
    _instance ??= AuthService();
    return _instance!;
  }

  void register(UserDto userData) {
    _userRepository.add(userData);
  }

  void login(String username, String password) {
    User? user = _userRepository.findByUsername(username);
    if (user != null) {
      if (user.password == password) {
        userData = user;
        _authenticated = true;
      }
    }
  }

  User? getUserData() {
    return userData;
  }

  bool isAuthenticated() {
    return _authenticated;
  }
}
