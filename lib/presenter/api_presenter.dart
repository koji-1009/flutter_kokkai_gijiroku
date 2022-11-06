import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiPresenterProvider = Provider(
  (ref) => ApiPresenter(
    apiRepository: ref.watch(apiRepositoryProvider),
    box: ref.watch(searchHistoryBoxProvider),
  ),
);

class ApiPresenter {
  ApiPresenter({
    required this.apiRepository,
    required this.box,
  });

  final ApiRepository apiRepository;
  final Box<SearchHistory> box;

  Future<MeetingRecordDetailResponse> meetingDetailList({
    required int page,
    required SearchParams params,
  }) =>
      apiRepository.getMeetingDetail(
        queryParameters: {
          ...params.query,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '2',
          },
        },
      );

  Future<MeetingRecordSummaryResponse> meetingSummaryList({
    required int page,
    required SearchParams params,
  }) =>
      apiRepository.getMeetingSummary(
        queryParameters: {
          ...params.query,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '20',
          },
        },
      );

  Future<SpeechRecordResponse> speechList({
    required int page,
    required SearchParams params,
  }) {
    if (page == 1) {
      final key = params.hashCode;
      final history = box.get(key) ??
          SearchHistory.create(
            params: params,
          );

      history.updatedAt = DateTime.now();
      box.put(key, history);
    }

    return apiRepository.getSpeech(
      queryParameters: {
        ...params.query,
        ...{
          'recordPacking': 'json',
          'startRecord': page.toString(),
          'maximumRecords': '20',
        },
      },
    );
  }

  Future<SpeechRecordResponse> speech({
    required String speechID,
  }) =>
      apiRepository.getSpeech(
        queryParameters: {
          'recordPacking': 'json',
          'speechID': speechID,
          'maximumRecords': '1',
        },
      );

  Future<SpeechRecordResponse> issueDetail({
    required int page,
    required String issueID,
  }) =>
      apiRepository.getSpeech(
        queryParameters: {
          'recordPacking': 'json',
          'issueID': issueID,
          'startRecord': page.toString(),
          'maximumRecords': '20',
        },
      );
}
