import 'dart:convert';

import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:hive/hive.dart';
import 'package:quiver/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_history.g.dart';

@riverpod
Box<SearchHistory> searchHistoryBox(
  SearchHistoryBoxRef ref,
) =>
    throw Exception('Provider was not initialized');

@HiveType(typeId: 21)
class SearchHistory {
  SearchHistory({
    required this.updatedAt,
    required this.memo,
    required this.params,
  });

  factory SearchHistory.create({
    required SearchParams params,
  }) =>
      SearchHistory(
        updatedAt: DateTime.now(),
        memo: '',
        params: params,
      );

  @HiveField(1)
  DateTime updatedAt;

  @HiveField(2)
  String memo;

  @HiveField(3)
  SearchParams params;
}

extension SearchHistoryExt on SearchHistory {
  int get indexKey => hashObjects([jsonEncode(params.toJson())]);
}
