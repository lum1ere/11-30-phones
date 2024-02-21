import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/component/auth_form.dart';
import 'package:ment09_authentication_form/service/auth_service.dart';
import 'package:ment09_authentication_form/page/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  void checkAuth(BuildContext context) {
    AuthService? service = AuthService.getInstance();
    if (service.isAuthenticated()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    checkAuth(context);
    return Scaffold(
      appBar:
          AppBar(title: const Text("Auth Form"), backgroundColor: Colors.white),
      backgroundColor: Colors.blueAccent,
      body: Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07, left: 40, right: 40),
        child: AuthForm(),
      ),
    );
  }
}
