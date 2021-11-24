import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/components/app_bar_container.dart';
import 'package:chingalo_site/core/constants/app_contant.dart';
import 'package:chingalo_site/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeState>(builder: (context, appThemeState, child) {
      String currentTheme = appThemeState.currentTheme;
      Color textColor = currentTheme == ThemeServices.darkTheme
          ? AppContant.darkTextColor
          : AppContant.ligthTextColor;
      return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(AppContant.appBarHeight),
          child: AppBarContainer(
            title: '',
          ),
        ),
        body: Center(
          child: Text(
            "Welcome to joseph chingalo",
            style: const TextStyle().copyWith(
              color: textColor,
            ),
          ),
        ),
      );
    });
  }
}
