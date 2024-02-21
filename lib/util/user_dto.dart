class UserDto {
  UserDto();

  String _username = '';
  String _password = '';
  String _email = '';

  String getUsername() {
    return _username;
  }

  String getPassword() {
    return _password;
  }

  String getEmail() {
    return _email;
  }

  void setUsername(String username) {
    _username = username;
  }

  void setPassword(String password) {
    _password = password;
  }

  void setEmail(String email) {
    _email = email;
  }
}
