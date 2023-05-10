import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:paging_view/paging_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_source_issue.g.dart';

@riverpod
DataSourceIssue dataSourceIssue(
  DataSourceIssueRef ref, {
  required String issueID,
}) =>
    DataSourceIssue(
      repository: ref.watch(apiRepositoryProvider),
      issueID: issueID,
    );

final class DataSourceIssue extends DataSource<int, SpeechRecord> {
  DataSourceIssue({
    required this.repository,
    required this.issueID,
  });

  final ApiRepository repository;
  final String issueID;

  @override
  Future<LoadResult<int, SpeechRecord>> load(LoadAction<int> action) async {
    switch (action) {
      case Refresh():
        final response = await repository.getSpeechByIssueID(
          page: 1,
          issueID: issueID,
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
        final response = await repository.getSpeechByIssueID(
          page: pageKey,
          issueID: issueID,
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
