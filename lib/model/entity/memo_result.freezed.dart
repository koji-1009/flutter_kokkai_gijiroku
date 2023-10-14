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
mixin _$MemoResult {}

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
abstract class _$$MemoResultSuccessImplCopyWith<$Res> {
  factory _$$MemoResultSuccessImplCopyWith(_$MemoResultSuccessImpl value,
          $Res Function(_$MemoResultSuccessImpl) then) =
      __$$MemoResultSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memo});
}

/// @nodoc
class __$$MemoResultSuccessImplCopyWithImpl<$Res>
    extends _$MemoResultCopyWithImpl<$Res, _$MemoResultSuccessImpl>
    implements _$$MemoResultSuccessImplCopyWith<$Res> {
  __$$MemoResultSuccessImplCopyWithImpl(_$MemoResultSuccessImpl _value,
      $Res Function(_$MemoResultSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memo = null,
  }) {
    return _then(_$MemoResultSuccessImpl(
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MemoResultSuccessImpl
    with DiagnosticableTreeMixin
    implements MemoResultSuccess {
  const _$MemoResultSuccessImpl({required this.memo});

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
            other is _$MemoResultSuccessImpl &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoResultSuccessImplCopyWith<_$MemoResultSuccessImpl> get copyWith =>
      __$$MemoResultSuccessImplCopyWithImpl<_$MemoResultSuccessImpl>(
          this, _$identity);
}

abstract class MemoResultSuccess implements MemoResult {
  const factory MemoResultSuccess({required final String memo}) =
      _$MemoResultSuccessImpl;

  String get memo;
  @JsonKey(ignore: true)
  _$$MemoResultSuccessImplCopyWith<_$MemoResultSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MemoResultCancelImplCopyWith<$Res> {
  factory _$$MemoResultCancelImplCopyWith(_$MemoResultCancelImpl value,
          $Res Function(_$MemoResultCancelImpl) then) =
      __$$MemoResultCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MemoResultCancelImplCopyWithImpl<$Res>
    extends _$MemoResultCopyWithImpl<$Res, _$MemoResultCancelImpl>
    implements _$$MemoResultCancelImplCopyWith<$Res> {
  __$$MemoResultCancelImplCopyWithImpl(_$MemoResultCancelImpl _value,
      $Res Function(_$MemoResultCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MemoResultCancelImpl
    with DiagnosticableTreeMixin
    implements MemoResultCancel {
  const _$MemoResultCancelImpl();

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
        (other.runtimeType == runtimeType && other is _$MemoResultCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class MemoResultCancel implements MemoResult {
  const factory MemoResultCancel() = _$MemoResultCancelImpl;
}
