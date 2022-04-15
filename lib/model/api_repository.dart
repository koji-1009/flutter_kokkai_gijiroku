import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/model/api_config.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/api_exception.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/hive_repository.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

final apiRepositoryProvider = Provider(
  (ref) => ApiRepository(
    config: ref.watch(apiConfigProvider),
    hiveRepository: ref.watch(hiveRepositoryProvider),
  ),
);

class ApiRepository {
  const ApiRepository({
    required this.config,
    required this.hiveRepository,
  });

  final ApiConfig config;
  final HiveRepository hiveRepository;

  Future<MeetingRecordSummaryResponse> getMeetingSummary({
    required Map<String, String> queryParameters,
  }) async {
    final hiveKey = 'meetingSummary-$queryParameters';

    final cache = await hiveRepository.get(hiveKey);
    if (cache != null) {
      return MeetingRecordSummaryResponse.fromJson(cache);
    }

    final response = await http.get(
      config.meetingSummaryUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);

    final today = DateTime.now().localDate;
    final queryUntil = queryParameters['until'];
    if (queryUntil != null && queryUntil != today) {
      await hiveRepository.put(hiveKey, map);
    }

    return MeetingRecordSummaryResponse.fromJson(map);
  }

  Future<MeetingRecordDetailResponse> getMeetingDetail({
    required Map<String, String> queryParameters,
  }) async {
    final hiveKey = 'meetingDetail-$queryParameters';

    final cache = await hiveRepository.get(hiveKey);
    if (cache != null) {
      return MeetingRecordDetailResponse.fromJson(cache);
    }

    final response = await http.get(
      config.meetingDetailUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);

    final today = DateTime.now().localDate;
    final queryUntil = queryParameters['until'];
    if (queryUntil != null && queryUntil != today) {
      await hiveRepository.put(hiveKey, map);
    }

    return MeetingRecordDetailResponse.fromJson(map);
  }

  Future<SpeechRecordResponse> getSpeech({
    required Map<String, String> queryParameters,
  }) async {
    final hiveKey = 'speech-$queryParameters';

    final cache = await hiveRepository.get(hiveKey);
    if (cache != null) {
      return SpeechRecordResponse.fromJson(cache);
    }

    final response = await http.get(
      config.meetingSpeechUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);

    final today = DateTime.now().localDate;
    final queryUntil = queryParameters['until'];
    if (queryUntil != null && queryUntil != today) {
      await hiveRepository.put(hiveKey, map);
    }

    return SpeechRecordResponse.fromJson(map);
  }

  Exception _error(http.Response response) {
    if (response.body.isNotEmpty) {
      try {
        final error = ApiExceptionError.fromJson(
          json.decode(response.body),
        );

        return error;
      } on FormatException catch (e) {
        debugPrint(e.toString());

        try {
          // json形式で返ってこないため、xmlとしてハンドリングする
          final document = XmlDocument.parse(response.body);
          final messageList = document.findAllElements('message').first;

          return ApiExceptionError(
            message: messageList.nodes.first.text,
          );
        } on Exception catch (e) {
          debugPrint(e.toString());
        }
      }
    }

    return const ApiException.other();
  }
}
