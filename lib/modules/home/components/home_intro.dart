import 'package:flutter/material.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Text(
        'Text',
        style: const TextStyle().copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
