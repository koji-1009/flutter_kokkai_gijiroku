// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speech_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpeechRecordResponsee _$$_SpeechRecordResponseeFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SpeechRecordResponsee',
      json,
      ($checkedConvert) {
        final val = _$_SpeechRecordResponsee(
          numberOfRecords: $checkedConvert('numberOfRecords', (v) => v as int),
          numberOfReturn: $checkedConvert('numberOfReturn', (v) => v as int),
          startRecord: $checkedConvert('startRecord', (v) => v as int),
          nextRecordPosition:
              $checkedConvert('nextRecordPosition', (v) => v as int?),
          speechRecord: $checkedConvert(
              'speechRecord',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          SpeechRecord.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SpeechRecordResponseeToJson(
    _$_SpeechRecordResponsee instance) {
  final val = <String, dynamic>{
    'numberOfRecords': instance.numberOfRecords,
    'numberOfReturn': instance.numberOfReturn,
    'startRecord': instance.startRecord,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nextRecordPosition', instance.nextRecordPosition);
  val['speechRecord'] = instance.speechRecord.map((e) => e.toJson()).toList();
  return val;
}

_$_SpeechRecord _$$_SpeechRecordFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SpeechRecord',
      json,
      ($checkedConvert) {
        final val = _$_SpeechRecord(
          speechID: $checkedConvert('speechID', (v) => v as String),
          issueID: $checkedConvert('issueID', (v) => v as String),
          imageKind: $checkedConvert('imageKind', (v) => v as String),
          searchObject: $checkedConvert('searchObject', (v) => v as int),
          session: $checkedConvert('session', (v) => v as int),
          nameOfHouse: $checkedConvert('nameOfHouse', (v) => v as String),
          nameOfMeeting: $checkedConvert('nameOfMeeting', (v) => v as String),
          issue: $checkedConvert('issue', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          speechOrder: $checkedConvert('speechOrder', (v) => v as int),
          speaker: $checkedConvert('speaker', (v) => v as String),
          speakerYomi:
              $checkedConvert('speakerYomi', (v) => v as String? ?? ''),
          speakerGroup:
              $checkedConvert('speakerGroup', (v) => v as String? ?? ''),
          speakerPosition:
              $checkedConvert('speakerPosition', (v) => v as String? ?? ''),
          speakerRole:
              $checkedConvert('speakerRole', (v) => v as String? ?? ''),
          speech: $checkedConvert('speech', (v) => v as String),
          startPage: $checkedConvert('startPage', (v) => v as int),
          speechURL: $checkedConvert('speechURL', (v) => v as String),
          meetingURL: $checkedConvert('meetingURL', (v) => v as String),
          pdfURL: $checkedConvert('pdfURL', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SpeechRecordToJson(_$_SpeechRecord instance) =>
    <String, dynamic>{
      'speechID': instance.speechID,
      'issueID': instance.issueID,
      'imageKind': instance.imageKind,
      'searchObject': instance.searchObject,
      'session': instance.session,
      'nameOfHouse': instance.nameOfHouse,
      'nameOfMeeting': instance.nameOfMeeting,
      'issue': instance.issue,
      'date': instance.date,
      'speechOrder': instance.speechOrder,
      'speaker': instance.speaker,
      'speakerYomi': instance.speakerYomi,
      'speakerGroup': instance.speakerGroup,
      'speakerPosition': instance.speakerPosition,
      'speakerRole': instance.speakerRole,
      'speech': instance.speech,
      'startPage': instance.startPage,
      'speechURL': instance.speechURL,
      'meetingURL': instance.meetingURL,
      'pdfURL': instance.pdfURL,
    };
