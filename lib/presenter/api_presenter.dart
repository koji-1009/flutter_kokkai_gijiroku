import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_presenter.g.dart';

@riverpod
Future<SpeechRecordResponse> speechDetail(
  SpeechDetailRef ref, {
  required String speechID,
}) =>
    ref.watch(apiRepositoryProvider).getSpeechBySpeechId(
          speechID: speechID,
        );

@riverpod
Future<int> speechInfo(
  SpeechInfoRef ref, {
  required SearchParams params,
}) async {
  final response = await ref.watch(apiRepositoryProvider).getSpeech(
        page: 1,
        params: params,
      );

  return response.numberOfRecords;
}

@riverpod
Future<int> meetingSummaryInfo(
  MeetingSummaryInfoRef ref, {
  required SearchParams params,
}) async {
  final response = await ref.watch(apiRepositoryProvider).getMeetingSummary(
        page: 1,
        params: params,
      );

  return response.numberOfRecords;
}

@riverpod
Future<int> meetingDetailInfo(
  MeetingDetailInfoRef ref, {
  required SearchParams params,
}) async {
  final response = await ref.watch(apiRepositoryProvider).getMeetingDetail(
        page: 1,
        params: params,
      );

  return response.numberOfRecords;
}
