import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_result.freezed.dart';

@freezed
class MemoResult with _$MemoResult {
  const factory MemoResult({
    required String memo,
  }) = _MemoResult;

  const factory MemoResult.cancel() = _MemoResultCanecel;
}
