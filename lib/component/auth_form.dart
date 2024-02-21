import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/component/form_field.dart' as field;
import 'package:ment09_authentication_form/component/form_button.dart';
import 'package:ment09_authentication_form/page/home_page.dart';
import 'package:ment09_authentication_form/util/user_dto.dart';
import 'package:ment09_authentication_form/service/auth_service.dart';
import 'package:ment09_authentication_form/page/reg_page.dart';

class AuthForm extends StatefulWidget {
  AuthForm({super.key});

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 3),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
        child: Center(
          child: ListView(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              field.FormField(
                  text: 'Enter your username',
                  controller: widget.loginController),
              field.FormField(
                  text: 'Enter your password',
                  controller: widget.passwordController),
              AuthButton(
                  text: 'Log in',
                  callback: () {
                    UserDto dto = UserDto();
                    dto.setUsername(widget.loginController.text);
                    dto.setPassword(widget.passwordController.text);
                    AuthService service = AuthService.getInstance();
                    service.login(dto.getUsername(), dto.getPassword());
                    if (service.isAuthenticated()) {
                      log("Успешая аутентификация!");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      log("Такого пользователя не существует!");
                    }
                  }),
              TextButton(
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegPage()))
                },
                child: const Text(
                  'Not registered?',
                  style: TextStyle(fontSize: 22),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
