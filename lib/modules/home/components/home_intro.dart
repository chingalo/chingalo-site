import 'package:chingalo_site/core/components/material_card.dart';
import 'package:chingalo_site/core/utils/app_util.dart';
import 'package:flutter/material.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({
    Key? key,
    required this.textColor,
    required this.height,
  }) : super(key: key);

  final Color textColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    String homeInto = AppUtil.getHomePageInto();
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: MaterialCard(
        elevation: 0.2,
        body: Container(
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints(
            minHeight: height,
            minWidth: double.infinity,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Text(
            homeInto,
            style: const TextStyle().copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
