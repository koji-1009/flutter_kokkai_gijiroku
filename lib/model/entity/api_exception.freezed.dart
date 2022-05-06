// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, List<String> details) error,
    required TResult Function() other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionError value) error,
    required TResult Function(ApiExceptionOther value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res> implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  final ApiException _value;
  // ignore: unused_field
  final $Res Function(ApiException) _then;
}

/// @nodoc
abstract class _$$ApiExceptionErrorCopyWith<$Res> {
  factory _$$ApiExceptionErrorCopyWith(
          _$ApiExceptionError value, $Res Function(_$ApiExceptionError) then) =
      __$$ApiExceptionErrorCopyWithImpl<$Res>;
  $Res call({String message, List<String> details});
}

/// @nodoc
class __$$ApiExceptionErrorCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$ApiExceptionErrorCopyWith<$Res> {
  __$$ApiExceptionErrorCopyWithImpl(
      _$ApiExceptionError _value, $Res Function(_$ApiExceptionError) _then)
      : super(_value, (v) => _then(v as _$ApiExceptionError));

  @override
  _$ApiExceptionError get _value => super._value as _$ApiExceptionError;

  @override
  $Res call({
    Object? message = freezed,
    Object? details = freezed,
  }) {
    return _then(_$ApiExceptionError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
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
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  _$$ApiExceptionErrorCopyWith<_$ApiExceptionError> get copyWith =>
      __$$ApiExceptionErrorCopyWithImpl<_$ApiExceptionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, List<String> details) error,
    required TResult Function() other,
  }) {
    return error(message, details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
  }) {
    return error?.call(message, details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionError value) error,
    required TResult Function(ApiExceptionOther value) other,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiExceptionErrorToJson(this);
  }
}

abstract class ApiExceptionError implements ApiException {
  const factory ApiExceptionError(
      {required final String message,
      final List<String> details}) = _$ApiExceptionError;

  factory ApiExceptionError.fromJson(Map<String, dynamic> json) =
      _$ApiExceptionError.fromJson;

  String get message => throw _privateConstructorUsedError;
  List<String> get details => throw _privateConstructorUsedError;
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
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$ApiExceptionOtherCopyWith<$Res> {
  __$$ApiExceptionOtherCopyWithImpl(
      _$ApiExceptionOther _value, $Res Function(_$ApiExceptionOther) _then)
      : super(_value, (v) => _then(v as _$ApiExceptionOther));

  @override
  _$ApiExceptionOther get _value => super._value as _$ApiExceptionOther;
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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, List<String> details) error,
    required TResult Function() other,
  }) {
    return other();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
  }) {
    return other?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, List<String> details)? error,
    TResult Function()? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionError value) error,
    required TResult Function(ApiExceptionOther value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionError value)? error,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiExceptionOtherToJson(this);
  }
}

abstract class ApiExceptionOther implements ApiException {
  const factory ApiExceptionOther() = _$ApiExceptionOther;

  factory ApiExceptionOther.fromJson(Map<String, dynamic> json) =
      _$ApiExceptionOther.fromJson;
}
