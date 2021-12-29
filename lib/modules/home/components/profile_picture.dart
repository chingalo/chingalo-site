import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required this.height,
    required this.backgroundColor,
  }) : super(key: key);

  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: backgroundColor,
          child: Image.asset(
            'assets/images/profile-pic.png',
            height: height,
          ),
        ),
      ),
    );
  }
}
