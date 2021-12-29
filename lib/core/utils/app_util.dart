class AppUtil {
  static String getYearsOfWork() {
    DateTime dateOfStartWork = DateTime.parse('2015-07-01');
    Duration duration = DateTime.now().difference(dateOfStartWork);
    return (duration.inDays / 365).floor().toString();
  }
}
