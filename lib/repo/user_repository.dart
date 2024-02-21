import 'package:ment09_authentication_form/entity/user.dart';
import 'package:ment09_authentication_form/util/user_dto.dart';

abstract class AbstractUserRepository {
  void add(UserDto userData);

  User? findByUsername(String username);
}

class InMemoryUserRepository extends AbstractUserRepository {
  InMemoryUserRepository() {
    inMemoryUsers['1'] = User(1, '1', '1', '1');
  }

  static InMemoryUserRepository? _instance;

  static InMemoryUserRepository? getInstance() {
    _instance ??= InMemoryUserRepository();

    return _instance;
  }

  static Map<String, User> inMemoryUsers = {};

  @override
  void add(UserDto userData) {
    User user = User(
        inMemoryUsers.length + 1, userData.getUsername(), userData.getPassword(), userData.getEmail());
    inMemoryUsers[user.username] = user;
  }

  @override
  User? findByUsername(String username) {
    return inMemoryUsers[username];
  }
}
