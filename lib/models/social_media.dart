class SocialMedia {
  String id;
  String icon;
  String url;

  SocialMedia({
    required this.id,
    required this.icon,
    required this.url,
  });

  @override
  String toString() => 'SocialMedia(id: $id, icon: $icon, url:$url)';

  static List<SocialMedia> getAllSocialMedia() {
    return [
      SocialMedia(
        id: 'whatsapp',
        icon: 'assets/icons/whatsapp.svg',
        url:
            'https://api.whatsapp.com/send/?phone=255687168637&text&app_absent=0',
      ),
      SocialMedia(
        id: 'instagram',
        icon: 'assets/icons/instagram.svg',
        url: 'https://www.instagram.com/joseph_chingalo',
      ),
      SocialMedia(
        id: 'twitter',
        icon: 'assets/icons/twitter.svg',
        url: 'https://twitter.com/profchingalo',
      ),
      SocialMedia(
        id: 'facebook',
        icon: 'assets/icons/facebook.svg',
        url: 'https://web.facebook.com/profs.chingalo',
      ),
      SocialMedia(
        id: 'github',
        icon: 'assets/icons/github.svg',
        url: 'https://github.com/chingalo',
      ),
      SocialMedia(
        id: 'linkedin',
        icon: 'assets/icons/linkedin.svg',
        url: 'https://www.linkedin.com/in/joseph-chingalo-b9792075',
      ),
    ];
  }
}
