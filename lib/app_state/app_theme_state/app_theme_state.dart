import 'package:chingalo_site/core/services/theme_service.dart';
import 'package:flutter/foundation.dart';

class AppThemeState with ChangeNotifier {
  String? _currentTheme;

  String get currentTheme => _currentTheme ?? ThemeServices.darkTheme;

  void setCurrentTheme(String theme) async {
    _currentTheme = theme;
    await ThemeServices.setCurrentTheme(theme);
    notifyListeners();
  }
}
