import 'package:intl/intl.dart';

String getFormattedDate() {

  DateTime now = DateTime.now();
  return DateFormat('EEEE, d MMMM y').format(now);
}
