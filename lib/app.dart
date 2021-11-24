import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/services/theme_service.dart';
import 'package:chingalo_site/modules/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppThemeState()),
      ],
      child: Consumer<AppThemeState>(
        builder: (context, appThemeState, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appThemeState.currentTheme == ThemeServices.darkTheme
              ? ThemeData.dark().copyWith(
                  textTheme: GoogleFonts.robotoTextTheme(
                    Theme.of(context).textTheme,
                  ),
                )
              : ThemeData.light().copyWith(
                  textTheme: GoogleFonts.robotoTextTheme(
                    Theme.of(context).textTheme,
                  ),
                ),
          home: const Splash(),
        ),
      ),
    );
  }
}
