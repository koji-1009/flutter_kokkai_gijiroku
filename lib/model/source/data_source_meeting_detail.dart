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

class DataSourceMeetingDetail extends DataSource<int, MeetingRecordDetail> {
  DataSourceMeetingDetail({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, MeetingRecordDetail>> load(
    LoadParams<int> params,
  ) async {
    return params.when(
      refresh: () async {
        final response = await repository.getMeetingDetail(
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
        final response = await repository.getMeetingDetail(
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
