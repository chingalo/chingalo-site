import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Text(
        "contents",
        style: const TextStyle().copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
