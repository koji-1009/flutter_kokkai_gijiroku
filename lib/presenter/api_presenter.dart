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

  Future<MeetingRecordDetailResponse> meetingDetail({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getMeetingDetail(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '10',
          },
        },
      );

  Future<MeetingRecordSummaryResponse> meetingSummary({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getMeetingSummary(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '100',
          },
        },
      );

  Future<SpeechRecordResponse> speech({
    required int page,
    required Map<String, String> params,
  }) =>
      apiRepository.getSpeech(
        queryParameters: {
          ...params,
          ...{
            'recordPacking': 'json',
            'startRecord': page.toString(),
            'maximumRecords': '100',
          },
        },
      );
}
