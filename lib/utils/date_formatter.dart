import 'package:intl/intl.dart';

final _yMMMEdFormatter = DateFormat.yMMMEd('ja_JP');

extension FormatDateTime on DateTime {
  String get yMMMMEd => _yMMMEdFormatter.format(this);
}

extension DateString on String {
  String get yMMMEd => DateTime.parse(this).yMMMMEd;
}
