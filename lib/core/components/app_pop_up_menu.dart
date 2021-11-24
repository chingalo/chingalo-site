import 'dart:async';

import 'package:chingalo_site/app_state/app_theme_state/app_theme_state.dart';
import 'package:chingalo_site/core/constants/app_contant.dart';
import 'package:chingalo_site/models/app_pop_up_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppPopUpMenu extends StatelessWidget {
  const AppPopUpMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppThemeState appThemeState =
        Provider.of<AppThemeState>(context, listen: false);
    List<AppPopUpMenuItem> menuItems = AppPopUpMenuItem.getPopUpMenuItems();
    return PopupMenuButton(
      onSelected: (AppPopUpMenuItem menuItem) {
        Timer(
          const Duration(milliseconds: 100),
          () {
            appThemeState.setCurrentTheme(menuItem.id);
          },
        );
      },
      elevation: 4.0,
      icon: const Icon(Icons.more_vert),
      itemBuilder: (BuildContext context) {
        return menuItems
            .where((AppPopUpMenuItem menuItem) =>
                menuItem.id != appThemeState.currentTheme)
            .toList()
            .map(
              (AppPopUpMenuItem menuItem) => PopupMenuItem(
                value: menuItem,
                child: Row(
                  children: [
                    Consumer<AppThemeState>(
                      builder: (context, appThemeState, child) {
                        return Icon(
                          menuItem.icon,
                          color: appThemeState.currentTheme == 'dark'
                              ? Colors.amberAccent
                              : AppContant.darkTextColor,
                        );
                      },
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      menuItem.name,
                      style: const TextStyle().copyWith(),
                    ),
                  ],
                ),
              ),
            )
            .toList();
      },
    );
  }
}
