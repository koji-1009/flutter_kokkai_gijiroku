import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiConfigProvider = Provider(
  (_) => const ApiConfig(),
);

@immutable
class ApiConfig {
  const ApiConfig();

  final _baseUrl = 'https://kokkai.ndl.go.jp/api/';

  Uri get meetingSummaryUri => Uri.parse('${_baseUrl}meeting_list');

  Uri get meetingDetailUri => Uri.parse('${_baseUrl}meeting');

  Uri get meetingSpeechUri => Uri.parse('${_baseUrl}speech');
}
