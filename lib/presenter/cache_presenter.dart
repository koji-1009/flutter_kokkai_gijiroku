import 'package:flutter_kokkai_gijiroku/model/hive_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cachePresenterProvider = Provider(
  (ref) => CachePresenter(
    repository: ref.watch(
      hiveRepositoryProvider,
    ),
  ),
);

class CachePresenter {
  CachePresenter({
    required this.repository,
  });

  final HiveRepository repository;

  Future<void> clear() => repository.clear();
}
