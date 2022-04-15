import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final hiveProvider = Provider<Box<Map<String, dynamic>>>(
  (_) => throw Exception('Provider is not initialize'),
);

final hiveRepositoryProvider = Provider(
  (ref) => HiveRepository(
    box: ref.watch(hiveProvider),
  ),
);

class HiveRepository {
  const HiveRepository({
    required this.box,
  });

  final Box<Map<String, dynamic>> box;

  Future<Map<String, dynamic>?> get(String key) async {
    return box.get(key);
  }

  Future<void> put(String key, Map<String, dynamic> json) async {
    return box.put(key, json);
  }
}
