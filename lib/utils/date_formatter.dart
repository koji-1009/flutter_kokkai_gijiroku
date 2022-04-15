import 'package:intl/intl.dart';

final _yMMMEdFormatter = DateFormat.yMMMEd('ja_JP');
final _localDateFormatter = DateFormat('yyyy-MM-dd');

extension FormatDateTime on DateTime {
  String get yMMMMEd => _yMMMEdFormatter.format(this);
  String get localDate => _localDateFormatter.format(this);
}

extension DateString on String {
  String get yMMMEd => DateTime.parse(this).yMMMMEd;
}
