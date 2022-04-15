import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiPresenterProvider = Provider(
  (ref) => ApiPresenter(
    apiRepository: ref.watch(
      apiRepositoryProvider,
    ),
  ),
);

class ApiPresenter {
  ApiPresenter({
    required this.apiRepository,
  });

  final ApiRepository apiRepository;

  Future<MeetingRecordDetailResponse> meetingDetailList({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getMeetingDetail(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '2',
          },
        },
      );

  Future<MeetingRecordSummaryResponse> meetingSummaryList({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getMeetingSummary(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '20',
          },
        },
      );

  Future<SpeechRecordResponse> speechList({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getSpeech(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '20',
          },
        },
      );

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
