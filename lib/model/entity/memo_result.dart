import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_result.freezed.dart';

@freezed
sealed class MemoResult with _$MemoResult {
  const factory MemoResult({
    required String memo,
  }) = MemoResultSuccess;

  const factory MemoResult.cancel() = MemoResultCancel;
}
