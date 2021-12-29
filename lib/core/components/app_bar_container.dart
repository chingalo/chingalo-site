import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/constants/app_contant.dart';
import 'package:chingalo_site/models/app_pop_up_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    Key? key,
    this.elevation = 0.0,
    required this.title,
  }) : super(key: key);

  final String title;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeState>(
      builder: (context, appThemeState, child) {
        return AppBar(
          elevation: elevation,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle().copyWith(
                    fontSize: 16.0,
                  ),
                ),
              ),
              ...AppPopUpMenuItem.getPopUpMenuItems()
                  .where((AppPopUpMenuItem menuItem) =>
                      menuItem.id != appThemeState.currentTheme)
                  .toList()
                  .map(
                    (AppPopUpMenuItem menuItem) => GestureDetector(
                      onTap: () => appThemeState.setCurrentTheme(menuItem.id),
                      child: Icon(
                        menuItem.icon,
                        color: appThemeState.currentTheme == 'dark'
                            ? Colors.amberAccent
                            : AppContant.ligthLabelTextColor,
                      ),
                    ),
                  )
                  .toList()
            ],
          ),
        );
      },
    );
  }
}
