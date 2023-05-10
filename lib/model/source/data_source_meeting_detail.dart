import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:paging_view/paging_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_meeting_detail.g.dart';

@riverpod
DataSourceMeetingDetail dataSourceMeetingDetail(
  DataSourceMeetingDetailRef ref, {
  required SearchParams params,
}) =>
    DataSourceMeetingDetail(
      repository: ref.watch(apiRepositoryProvider),
      searchParams: params,
    );

final class DataSourceMeetingDetail
    extends DataSource<int, MeetingRecordDetail> {
  DataSourceMeetingDetail({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, MeetingRecordDetail>> load(
    LoadAction<int> action,
  ) async {
    switch (action) {
      case Refresh():
        final response = await repository.getMeetingDetail(
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
        final response = await repository.getMeetingDetail(
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
