import 'package:flutter/material.dart';

class AppUtil {
  static String getYearsOfWork() {
    DateTime dateOfStartWork = DateTime.parse('2015-07-01');
    Duration duration = DateTime.now().difference(dateOfStartWork);
    return (duration.inDays / 365).floor().toString();
  }

  static String getHomePageInto() {
    String years = getYearsOfWork();
    return 'Holla! \n\nIts Joseph Chingalo, holds a B.Cs with Computer Science from the University of Dar-es-salaam, $years years of experience in designing, developing, and implementing information systems in Tanzania as well as other international organizations.\n\nSpecialized in the designing & development of web apps, mobile apps ( for IOS and Android) as well as cross platforms desktop apps (For Mac, Window, and Linux) as well as customization, training, and implementation of DHIS2 related projects';
  }

  static bool userMobileLayout(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide < 600;
  }
}
