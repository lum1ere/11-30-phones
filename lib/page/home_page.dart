import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/entity/phone.dart';
import 'package:ment09_authentication_form/repo/phone_repository.dart';
import 'package:ment09_authentication_form/component/phone_card.dart';

class HomePage extends StatefulWidget {
  final AbstractPhoneRepository phoneRepository =
      InMemoryPhoneRepository.getInstance();
  final Set<Phone> phones = {};

  HomePage({super.key}) {
    List<Phone> phones = phoneRepository.getAllPhones();
    for (int i = 0; i < phones.length; i++) {
      this.phones.add(phones.elementAt(i));
    }
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: const Text("Phone shop")),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: widget.phones.length,
              itemBuilder: (context, index) {
                Phone phone = widget.phones.elementAt(index);
                return PhoneCard(
                    text: phone.title,
                    imageUrl: phone.imageUrl,
                    desc: phone.desc);
              })),
    );
  }
}
