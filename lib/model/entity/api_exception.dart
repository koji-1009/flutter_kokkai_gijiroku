import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';
part 'api_exception.g.dart';

@freezed
sealed class ApiException with _$ApiException implements Exception {
  const factory ApiException.error({
    required String message,
    @Default([]) List<String> details,
  }) = ApiExceptionError;

  const factory ApiException.other() = ApiExceptionOther;

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);
}
