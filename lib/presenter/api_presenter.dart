import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final speechDetailProvider =
    FutureProvider.family<SpeechRecordResponse, String>(
  (ref, speechID) => ref.watch(apiRepositoryProvider).getSpeechBySpeechId(
        speechID: speechID,
      ),
);

final speechInfoProvider = FutureProvider.family.autoDispose<int, SearchParams>(
  (ref, searchParams) async {
    final response = await ref.watch(apiRepositoryProvider).getSpeech(
          page: 1,
          params: searchParams,
        );

    return response.numberOfRecords;
  },
);

final meetingSummaryInfoProvider = FutureProvider.family.autoDispose<int, SearchParams>(
      (ref, searchParams) async {
    final response = await ref.watch(apiRepositoryProvider).getMeetingSummary(
      page: 1,
      params: searchParams,
    );

    return response.numberOfRecords;
  },
);

final meetingDetailInfoProvider = FutureProvider.family.autoDispose<int, SearchParams>(
      (ref, searchParams) async {
    final response = await ref.watch(apiRepositoryProvider).getMeetingDetail(
      page: 1,
      params: searchParams,
    );

    return response.numberOfRecords;
  },
);
