import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:paging_view/paging_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_speech.g.dart';

@riverpod
DataSourceSpeech dataSourceSpeech(
  DataSourceSpeechRef ref, {
  required SearchParams params,
}) =>
    DataSourceSpeech(
      repository: ref.watch(apiRepositoryProvider),
      searchParams: params,
    );

final class DataSourceSpeech extends DataSource<int, SpeechRecord> {
  DataSourceSpeech({
    required this.repository,
    required this.searchParams,
  });

  final ApiRepository repository;
  final SearchParams searchParams;

  @override
  Future<LoadResult<int, SpeechRecord>> load(
    LoadAction<int> action,
  ) async {
    switch (action) {
      case Refresh():
        final response = await repository.getSpeech(
          page: 1,
          params: searchParams,
        );

        return Success(
          page: PageData(
            data: response.speechRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
      case Prepend(key: _):
        return const None();
      case Append(key: int pageKey):
        final response = await repository.getSpeech(
          page: pageKey,
          params: searchParams,
        );

        return Success(
          page: PageData(
            data: response.speechRecord,
            appendKey: response.nextRecordPosition,
          ),
        );
    }
  }
}
