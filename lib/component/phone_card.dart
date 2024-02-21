import 'package:flutter/material.dart';
import 'package:ment09_authentication_form/page/phone_card_view.dart';

class PhoneCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String desc;

  const PhoneCard(
      {super.key,
      required this.text,
      required this.imageUrl,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14)
      ),
      height: 400,
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                child: Image.network(imageUrl)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhoneCardView(
                        imageUrl: imageUrl, text: text, desc: desc)));
                },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneCardView(
                              imageUrl: imageUrl, text: text, desc: desc)));
                  },
                child: Text(text, style: const TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}