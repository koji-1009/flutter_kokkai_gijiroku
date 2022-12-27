import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paging_view/paging_view.dart';

final dataSourceSpeechProvider =
    Provider.family.autoDispose<DataSourceSpeech, SearchParams>(
  (ref, params) => DataSourceSpeech(
    repository: ref.watch(apiRepositoryProvider),
    searchParams: params,
  ),
);

class DataSourceSpeech extends DataSource<int, SpeechRecord> {
  DataSourceSpeech({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, SpeechRecord>> load(
    LoadParams<int> params,
  ) async {
    return params.when(
      refresh: () async {
        final response = await repository.getSpeech(
          page: 1,
          params: searchParams,
        );

        return LoadResult.success(
          page: PageData(
            data: response.speechRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      },
      prepend: (pageKey) async => const LoadResult.none(),
      append: (pageKey) async {
        final response = await repository.getSpeech(
          page: pageKey,
          params: searchParams,
        );

        return LoadResult.success(
          page: PageData(
            data: response.speechRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      },
    );
  }
}
