import 'package:intl/intl.dart';

class DateFormatter {
  static String todayArabic() {
    final now = DateTime.now();
    final formatter = DateFormat(
      'EEEE، d MMMM y',
      'ar',
    );
    return formatter.format(now);
  }
}