import 'package:chingalo_site/models/social_media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    Key? key,
    required this.socialMedia,
    required this.textColor,
    required this.onTap,
  }) : super(key: key);

  final SocialMedia socialMedia;
  final Color textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: SvgPicture.asset(
          socialMedia.icon,
          color: textColor,
        ),
      ),
    );
  }
}
