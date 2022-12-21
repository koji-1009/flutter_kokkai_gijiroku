import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';

final dataSourceMeetingDetailProvider =
    Provider.family.autoDispose<DataSourceMeetingDetail, SearchParams>(
  (ref, params) => DataSourceMeetingDetail(
    repository: ref.watch(apiRepositoryProvider),
    searchParams: params,
  ),
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
    try {
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
    } on Exception catch (error) {
      return LoadResult.failure(
        e: error,
      );
    }
  }
}
