import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/model/api_config.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/api_exception.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

final apiRepositoryProvider = Provider(
  (ref) => ApiRepository(
    config: ref.watch(apiConfigProvider),
  ),
);

class ApiRepository {
  const ApiRepository({
    required this.config,
  });

  final ApiConfig config;

  Future<MeetingRecordSummaryResponse> getMeetingSummary({
    required Map<String, String> queryParameters,
  }) async {
    final response = await http.get(
      config.meetingSummaryUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    return MeetingRecordSummaryResponse.fromJson(
      json.decode(response.body),
    );
  }

  Future<MeetingRecordDetailResponse> getMeetingDetail({
    required Map<String, String> queryParameters,
  }) async {
    final response = await http.get(
      config.meetingDetailUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    return MeetingRecordDetailResponse.fromJson(
      json.decode(response.body),
    );
  }

  Future<SpeechRecordResponse> getSpeech({
    required Map<String, String> queryParameters,
  }) async {
    final response = await http.get(
      config.meetingSpeechUri.replace(
        queryParameters: queryParameters,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    return SpeechRecordResponse.fromJson(
      json.decode(response.body),
    );
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
