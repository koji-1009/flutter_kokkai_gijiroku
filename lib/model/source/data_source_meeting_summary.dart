import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:paging_view/paging_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_meeting_summary.g.dart';

@riverpod
DataSourceMeetingSummary dataSourceMeetingSummary(
  DataSourceMeetingSummaryRef ref, {
  required SearchParams params,
}) {
  final dataSource = DataSourceMeetingSummary(
    repository: ref.watch(apiRepositoryProvider),
    searchParams: params,
  );

  ref.onDispose(() {
    dataSource.dispose();
  });

  return dataSource;
}

final class DataSourceMeetingSummary
    extends DataSource<int, MeetingRecordSummary> {
  DataSourceMeetingSummary({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, MeetingRecordSummary>> load(
    LoadAction<int> action,
  ) async {
    switch (action) {
      case Refresh():
        final response = await repository.getMeetingSummary(
          page: 1,
          params: searchParams,
        );

        return Success(
          page: PageData(
            data: response.meetingRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      case Prepend(key: _):
        return const None();
      case Append(key: int pageKey):
        final response = await repository.getMeetingSummary(
          page: pageKey,
          params: searchParams,
        );

        return Success(
          page: PageData(
            data: response.meetingRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
    }
  }
}
