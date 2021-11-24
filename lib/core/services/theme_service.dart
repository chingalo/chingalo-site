import 'package:chingalo_site/core/services/preference_provider.dart';

class ThemeServices {
  static String darkTheme = 'dark';

  static String lightTheme = 'light';
  static const String themePreferenceKey = 'app_theme';

  static setCurrentTheme(String theme) async {
    await PreferenceProvider.setPreferenceValue(themePreferenceKey, theme);
  }

  static Future<String> getCurrentTheme() async {
    return await PreferenceProvider.getPreferenceValue(themePreferenceKey) ??
        darkTheme;
  }
}
