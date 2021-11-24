import 'dart:async';

import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/constants/app_contant.dart';
import 'package:chingalo_site/core/services/theme_service.dart';
import 'package:chingalo_site/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              )
            });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeState>(builder: (context, appThemeState, child) {
      String currentTheme = appThemeState.currentTheme;
      Color textColor = currentTheme == ThemeServices.darkTheme
          ? AppContant.darkTextColor
          : AppContant.ligthTextColor;
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: textColor,
          ),
        ),
      );
    });
  }
}
