// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'error':
      return ApiExceptionError.fromJson(json);
    case 'other':
      return ApiExceptionOther.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiException {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiExceptionErrorCopyWith<$Res> {
  factory _$$ApiExceptionErrorCopyWith(
          _$ApiExceptionError value, $Res Function(_$ApiExceptionError) then) =
      __$$ApiExceptionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, List<String> details});
}

/// @nodoc
class __$$ApiExceptionErrorCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionError>
    implements _$$ApiExceptionErrorCopyWith<$Res> {
  __$$ApiExceptionErrorCopyWithImpl(
      _$ApiExceptionError _value, $Res Function(_$ApiExceptionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_$ApiExceptionError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiExceptionError
    with DiagnosticableTreeMixin
    implements ApiExceptionError {
  const _$ApiExceptionError(
      {required this.message,
      final List<String> details = const [],
      final String? $type})
      : _details = details,
        $type = $type ?? 'error';

  factory _$ApiExceptionError.fromJson(Map<String, dynamic> json) =>
      _$$ApiExceptionErrorFromJson(json);

  @override
  final String message;
  final List<String> _details;
  @override
  @JsonKey()
  List<String> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.error(message: $message, details: $details)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiException.error'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('details', details));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiExceptionError &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiExceptionErrorCopyWith<_$ApiExceptionError> get copyWith =>
      __$$ApiExceptionErrorCopyWithImpl<_$ApiExceptionError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiExceptionErrorToJson(
      this,
    );
  }
}

abstract class ApiExceptionError implements ApiException {
  const factory ApiExceptionError(
      {required final String message,
      final List<String> details}) = _$ApiExceptionError;

  factory ApiExceptionError.fromJson(Map<String, dynamic> json) =
      _$ApiExceptionError.fromJson;

  String get message;
  List<String> get details;
  @JsonKey(ignore: true)
  _$$ApiExceptionErrorCopyWith<_$ApiExceptionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiExceptionOtherCopyWith<$Res> {
  factory _$$ApiExceptionOtherCopyWith(
          _$ApiExceptionOther value, $Res Function(_$ApiExceptionOther) then) =
      __$$ApiExceptionOtherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApiExceptionOtherCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionOther>
    implements _$$ApiExceptionOtherCopyWith<$Res> {
  __$$ApiExceptionOtherCopyWithImpl(
      _$ApiExceptionOther _value, $Res Function(_$ApiExceptionOther) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ApiExceptionOther
    with DiagnosticableTreeMixin
    implements ApiExceptionOther {
  const _$ApiExceptionOther({final String? $type}) : $type = $type ?? 'other';

  factory _$ApiExceptionOther.fromJson(Map<String, dynamic> json) =>
      _$$ApiExceptionOtherFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiException.other()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ApiException.other'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApiExceptionOther);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiExceptionOtherToJson(
      this,
    );
  }
}

abstract class ApiExceptionOther implements ApiException {
  const factory ApiExceptionOther() = _$ApiExceptionOther;

  factory ApiExceptionOther.fromJson(Map<String, dynamic> json) =
      _$ApiExceptionOther.fromJson;
}
