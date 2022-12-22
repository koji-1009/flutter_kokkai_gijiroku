import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';

final dataSourceMeetingSummaryProvider =
    Provider.family.autoDispose<DataSourceMeetingSummary, SearchParams>(
  (ref, params) => DataSourceMeetingSummary(
    repository: ref.watch(apiRepositoryProvider),
    searchParams: params,
  ),
);

class DataSourceMeetingSummary extends DataSource<int, MeetingRecordSummary> {
  DataSourceMeetingSummary({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, MeetingRecordSummary>> load(
    LoadParams<int> params,
  ) async {
    return params.when(
      refresh: () async {
        final response = await repository.getMeetingSummary(
          page: 1,
          params: searchParams,
        );

        return LoadResult.success(
          page: PageData(
            data: response.meetingRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      },
      prepend: (pageKey) async => const LoadResult.none(),
      append: (pageKey) async {
        final response = await repository.getMeetingSummary(
          page: pageKey,
          params: searchParams,
        );

        return LoadResult.success(
          page: PageData(
            data: response.meetingRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      },
    );
  }
}
