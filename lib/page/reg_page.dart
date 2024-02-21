import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/component/reg_form.dart';

class RegPage extends StatelessWidget {
  const RegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Auth Form"), backgroundColor: Colors.white),
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding:
        EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07, left: 40, right: 40),
        child: RegForm(),
      ),
    );
  }
}
