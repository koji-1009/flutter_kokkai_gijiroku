// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemoResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String memo) $default, {
    required TResult Function() cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String memo)? $default, {
    TResult? Function()? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String memo)? $default, {
    TResult Function()? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MemoResult value) $default, {
    required TResult Function(_MemoResultCanecel value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MemoResult value)? $default, {
    TResult? Function(_MemoResultCanecel value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MemoResult value)? $default, {
    TResult Function(_MemoResultCanecel value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoResultCopyWith<$Res> {
  factory $MemoResultCopyWith(
          MemoResult value, $Res Function(MemoResult) then) =
      _$MemoResultCopyWithImpl<$Res, MemoResult>;
}

/// @nodoc
class _$MemoResultCopyWithImpl<$Res, $Val extends MemoResult>
    implements $MemoResultCopyWith<$Res> {
  _$MemoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MemoResultCopyWith<$Res> {
  factory _$$_MemoResultCopyWith(
          _$_MemoResult value, $Res Function(_$_MemoResult) then) =
      __$$_MemoResultCopyWithImpl<$Res>;
  @useResult
  $Res call({String memo});
}

/// @nodoc
class __$$_MemoResultCopyWithImpl<$Res>
    extends _$MemoResultCopyWithImpl<$Res, _$_MemoResult>
    implements _$$_MemoResultCopyWith<$Res> {
  __$$_MemoResultCopyWithImpl(
      _$_MemoResult _value, $Res Function(_$_MemoResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = null,
  }) {
    return _then(_$_MemoResult(
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MemoResult with DiagnosticableTreeMixin implements _MemoResult {
  const _$_MemoResult({required this.memo});

  @override
  final String memo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemoResult(memo: $memo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MemoResult'))
      ..add(DiagnosticsProperty('memo', memo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoResult &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemoResultCopyWith<_$_MemoResult> get copyWith =>
      __$$_MemoResultCopyWithImpl<_$_MemoResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String memo) $default, {
    required TResult Function() cancel,
  }) {
    return $default(memo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String memo)? $default, {
    TResult? Function()? cancel,
  }) {
    return $default?.call(memo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String memo)? $default, {
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(memo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MemoResult value) $default, {
    required TResult Function(_MemoResultCanecel value) cancel,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MemoResult value)? $default, {
    TResult? Function(_MemoResultCanecel value)? cancel,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MemoResult value)? $default, {
    TResult Function(_MemoResultCanecel value)? cancel,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MemoResult implements MemoResult {
  const factory _MemoResult({required final String memo}) = _$_MemoResult;

  String get memo;
  @JsonKey(ignore: true)
  _$$_MemoResultCopyWith<_$_MemoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MemoResultCanecelCopyWith<$Res> {
  factory _$$_MemoResultCanecelCopyWith(_$_MemoResultCanecel value,
          $Res Function(_$_MemoResultCanecel) then) =
      __$$_MemoResultCanecelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MemoResultCanecelCopyWithImpl<$Res>
    extends _$MemoResultCopyWithImpl<$Res, _$_MemoResultCanecel>
    implements _$$_MemoResultCanecelCopyWith<$Res> {
  __$$_MemoResultCanecelCopyWithImpl(
      _$_MemoResultCanecel _value, $Res Function(_$_MemoResultCanecel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MemoResultCanecel
    with DiagnosticableTreeMixin
    implements _MemoResultCanecel {
  const _$_MemoResultCanecel();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MemoResult.cancel()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MemoResult.cancel'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MemoResultCanecel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String memo) $default, {
    required TResult Function() cancel,
  }) {
    return cancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String memo)? $default, {
    TResult? Function()? cancel,
  }) {
    return cancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String memo)? $default, {
    TResult Function()? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MemoResult value) $default, {
    required TResult Function(_MemoResultCanecel value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MemoResult value)? $default, {
    TResult? Function(_MemoResultCanecel value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MemoResult value)? $default, {
    TResult Function(_MemoResultCanecel value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _MemoResultCanecel implements MemoResult {
  const factory _MemoResultCanecel() = _$_MemoResultCanecel;
}
