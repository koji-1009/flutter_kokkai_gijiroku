import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/model/api_config.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/api_exception.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:http_hive_cache/http_hive_cache.dart';
import 'package:quiver/core.dart';
import 'package:xml/xml.dart';

final apiRepositoryProvider = Provider(
  (ref) => ApiRepository(
    config: ref.watch(apiConfigProvider),
    box: ref.watch(searchHistoryBoxProvider),
  ),
);

class ApiRepository {
  const ApiRepository({
    required this.config,
    required this.box,
  });

  final ApiConfig config;
  final Box<SearchHistory> box;

  Future<MeetingRecordSummaryResponse> getMeetingSummary({
    required int page,
    required SearchParams params,
    Duration cacheControl = const Duration(
      hours: 3,
    ),
  }) async {
    if (page == 1) {
      await upsertHistory(
        params: params,
      );
    }

    final queryParameters = {
      ...params.query,
      ...{
        'recordPacking': 'json',
        'startRecord': '$page',
        'maximumRecords': '20',
      },
    };
    final response = await HttpHiveCache.get(
      config.meetingSummaryUri.replace(
        queryParameters: queryParameters,
      ),
      strategy: CacheStrategy.client(
        cacheControl: cacheControl,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);
    return MeetingRecordSummaryResponse.fromJson(map);
  }

  Future<MeetingRecordDetailResponse> getMeetingDetail({
    required int page,
    required SearchParams params,
    Duration cacheControl = const Duration(
      days: 3,
    ),
  }) async {
    if (page == 1) {
      await upsertHistory(
        params: params,
      );
    }

    final queryParameters = {
      ...params.query,
      ...{
        'recordPacking': 'json',
        'startRecord': '$page',
        'maximumRecords': '2',
      },
    };

    final response = await HttpHiveCache.get(
      config.meetingDetailUri.replace(
        queryParameters: queryParameters,
      ),
      strategy: CacheStrategy.client(
        cacheControl: cacheControl,
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);
    return MeetingRecordDetailResponse.fromJson(map);
  }

  Future<SpeechRecordResponse> getSpeechBySpeechId({
    required String speechID,
  }) async {
    final queryParameters = {
      'recordPacking': 'json',
      'speechID': speechID,
      'maximumRecords': '1',
    };

    final response = await HttpHiveCache.get(
      config.meetingSpeechUri.replace(
        queryParameters: queryParameters,
      ),
      strategy: const CacheStrategy.client(
        cacheControl: Duration(days: 1),
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);
    return SpeechRecordResponse.fromJson(map);
  }

  Future<SpeechRecordResponse> getSpeechByIssueID({
    required int page,
    required String issueID,
  }) async {
    final queryParameters = {
      'recordPacking': 'json',
      'issueID': issueID,
      'startRecord': '$page',
      'maximumRecords': '20',
    };

    final response = await HttpHiveCache.get(
      config.meetingSpeechUri.replace(
        queryParameters: queryParameters,
      ),
      strategy: const CacheStrategy.client(
        cacheControl: Duration(days: 1),
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);
    return SpeechRecordResponse.fromJson(map);
  }

  Future<SpeechRecordResponse> getSpeech({
    required int page,
    required SearchParams params,
  }) async {
    if (page == 1) {
      await upsertHistory(
        params: params,
      );
    }

    final queryParameters = {
      ...params.query,
      ...{
        'recordPacking': 'json',
        'startRecord': '$page',
        'maximumRecords': '20',
      },
    };

    final response = await HttpHiveCache.get(
      config.meetingSpeechUri.replace(
        queryParameters: queryParameters,
      ),
      strategy: const CacheStrategy.client(
        cacheControl: Duration(days: 1),
      ),
    );

    if (response.statusCode != 200) {
      throw _error(response);
    }

    final map = json.decode(response.body);
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

  Future<void> upsertHistory({
    required SearchParams params,
  }) async {
    final history = SearchHistory.create(
      params: params,
    );

    final key = hashObjects([params]);
    await box.put(key, history);
  }
}
