// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiExceptionError _$$ApiExceptionErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ApiExceptionError',
      json,
      ($checkedConvert) {
        final val = _$ApiExceptionError(
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

Map<String, dynamic> _$$ApiExceptionErrorToJson(_$ApiExceptionError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'details': instance.details,
      'runtimeType': instance.$type,
    };

_$ApiExceptionOther _$$ApiExceptionOtherFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ApiExceptionOther',
      json,
      ($checkedConvert) {
        final val = _$ApiExceptionOther(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ApiExceptionOtherToJson(_$ApiExceptionOther instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
