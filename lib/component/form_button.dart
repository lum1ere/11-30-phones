import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/util/auth_strategy.dart';

class AuthButton extends StatefulWidget {
  final String text;
  final AuthStrategy? strategy;
  final Function callback;

  const AuthButton(
      {super.key, required this.text, this.strategy, required this.callback});

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 65),
      child: ElevatedButton(
        onPressed: () {
          widget.callback();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(widget.text,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
