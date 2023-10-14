// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiExceptionErrorImpl _$$ApiExceptionErrorImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ApiExceptionErrorImpl',
      json,
      ($checkedConvert) {
        final val = _$ApiExceptionErrorImpl(
          message: $checkedConvert('message', (v) => v as String),
          details: $checkedConvert(
              'details',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toList() ??
                  const []),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ApiExceptionErrorImplToJson(
        _$ApiExceptionErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'runtimeType': instance.$type,
    };

_$ApiExceptionOtherImpl _$$ApiExceptionOtherImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ApiExceptionOtherImpl',
      json,
      ($checkedConvert) {
        final val = _$ApiExceptionOtherImpl(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ApiExceptionOtherImplToJson(
        _$ApiExceptionOtherImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
