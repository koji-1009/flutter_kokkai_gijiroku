import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_config.g.dart';

@riverpod
ApiConfig apiConfig(
  ApiConfigRef ref,
) =>
    const ApiConfig();

@immutable
class ApiConfig {
  const ApiConfig();

  final _baseUrl = 'https://kokkai.ndl.go.jp/api/';

  Uri get meetingSummaryUri => Uri.parse('${_baseUrl}meeting_list');

  Uri get meetingDetailUri => Uri.parse('${_baseUrl}meeting');

  Uri get meetingSpeechUri => Uri.parse('${_baseUrl}speech');
}
