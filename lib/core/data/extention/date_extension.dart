import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formattedTime => DateFormat('HH:mm').format(this);
}
