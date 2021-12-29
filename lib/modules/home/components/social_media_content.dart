import 'package:chingalo_site/models/social_media.dart';
import 'package:chingalo_site/modules/home/components/social_media_icon.dart';
import 'package:flutter/material.dart';

class SocialMediaContent extends StatelessWidget {
  const SocialMediaContent({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  final Color textColor;

  onTap(SocialMedia socialMedia) {
    print(socialMedia);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 15.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: SocialMedia.getAllSocialMedia()
            .map(
              (SocialMedia socialMedia) => SocialMediaIcon(
                socialMedia: socialMedia,
                onTap: () => onTap(socialMedia),
              ),
            )
            .toList(),
      ),
    );
  }
}
