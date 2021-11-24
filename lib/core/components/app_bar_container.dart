import 'package:chingalo_site/core/components/app_pop_up_menu.dart';
import 'package:flutter/material.dart';

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
    return AppBar(
      elevation: elevation,
      title: Text(
        title,
        style: const TextStyle().copyWith(
          fontSize: 16.0,
        ),
      ),
      actions: const [
        AppPopUpMenu(),
      ],
    );
  }
}
