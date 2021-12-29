import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/components/app_bar_container.dart';
import 'package:chingalo_site/core/constants/app_contant.dart';
import 'package:chingalo_site/core/services/theme_service.dart';
import 'package:chingalo_site/modules/home/components/home_content.dart';
import 'package:chingalo_site/modules/home/components/home_intro.dart';
import 'package:chingalo_site/modules/home/components/profile_picture.dart';
import 'package:chingalo_site/modules/home/components/social_media_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 0.3 * size.height;
    return Consumer<AppThemeState>(builder: (context, appThemeState, child) {
      String currentTheme = appThemeState.currentTheme;
      Color textColor = currentTheme == ThemeServices.darkTheme
          ? AppContant.darkTextColor
          : AppContant.ligthTextColor;
      Color backgroundColor = currentTheme == ThemeServices.darkTheme
          ? const Color(0xFF303030)
          : const Color(0xFF424242).withOpacity(0.5);
      return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(AppContant.appBarHeight),
          child: AppBarContainer(
            title: 'Chingalo',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: HomeIntro(
                      height: height,
                      textColor: textColor,
                    ),
                  ),
                  ProfilePicture(
                    height: height,
                    backgroundColor: backgroundColor,
                  ),
                ],
              ),
              HomeContent(
                textColor: textColor,
              )
            ],
          ),
        ),
        bottomNavigationBar: SocialMediaContent(
          textColor: textColor,
        ),
      );
    });
  }
}
