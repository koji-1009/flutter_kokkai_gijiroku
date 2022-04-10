import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
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

  Future<MeetingRecordSummaryResponse> meetingSummary({
    required SearchParams params,
  }) {
    if (params.maximumRecords != null) {
      assert(params.maximumRecords! >= 1);
      assert(params.maximumRecords! <= 100);
    }

    return apiRepository.getMeetingSummary(
      queryParameters: params.query,
    );
  }

  Future<MeetingRecordDetailResponse> meetingDetail({
    required SearchParams params,
  }) {
    if (params.maximumRecords != null) {
      assert(params.maximumRecords! >= 1);
      assert(params.maximumRecords! <= 10);
    }

    return apiRepository.getMeetingDetail(
      queryParameters: params.query,
    );
  }

  Future<SpeechRecordResponse> speech({
    required SearchParams params,
  }) {
    if (params.maximumRecords != null) {
      assert(params.maximumRecords! >= 1);
      assert(params.maximumRecords! <= 100);
    }

    return apiRepository.getSpeech(
      queryParameters: params.query,
    );
  }
}
