import 'package:flutter/material.dart';

class PhoneCardView extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String desc;

  const PhoneCardView(
      {super.key,
      required this.imageUrl,
      required this.text,
      required this.desc});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              Image.network(imageUrl),
              Center(
                child: Text(desc),
              )
            ],
          ),
        ),
      ),
    );
  }
}
