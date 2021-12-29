import 'package:chingalo_site/core/components/material_card.dart';
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
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: MaterialCard(
        elevation: 0.2,
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Hello, Joseph Chingalo',
            style: const TextStyle().copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
