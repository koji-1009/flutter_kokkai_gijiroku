// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeetingRecordResponseDetail _$$_MeetingRecordResponseDetailFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordResponseDetail',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordResponseDetail(
          numberOfRecords: $checkedConvert('numberOfRecords', (v) => v as int),
          numberOfReturn: $checkedConvert('numberOfReturn', (v) => v as int),
          startRecord: $checkedConvert('startRecord', (v) => v as int),
          nextRecordPosition:
              $checkedConvert('nextRecordPosition', (v) => v as int?),
          meetingRecord: $checkedConvert(
              'meetingRecord',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => MeetingRecordDetail.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordResponseDetailToJson(
    _$_MeetingRecordResponseDetail instance) {
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
  val['meetingRecord'] = instance.meetingRecord.map((e) => e.toJson()).toList();
  return val;
}

_$_MeetingRecordDetail _$$_MeetingRecordDetailFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordDetail',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordDetail(
          issueID: $checkedConvert('issueID', (v) => v as String),
          imageKind: $checkedConvert('imageKind', (v) => v as String),
          searchObject: $checkedConvert('searchObject', (v) => v as int),
          session: $checkedConvert('session', (v) => v as int),
          nameOfHouse: $checkedConvert('nameOfHouse', (v) => v as String),
          nameOfMeeting: $checkedConvert('nameOfMeeting', (v) => v as String),
          issue: $checkedConvert('issue', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          closing: $checkedConvert('closing', (v) => v as bool? ?? false),
          speechRecord: $checkedConvert(
              'speechRecord',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => MeetingRecordDetailSpeech.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          meetingURL: $checkedConvert('meetingURL', (v) => v as String),
          pdfURL: $checkedConvert('pdfURL', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordDetailToJson(
        _$_MeetingRecordDetail instance) =>
    <String, dynamic>{
      'issueID': instance.issueID,
      'imageKind': instance.imageKind,
      'searchObject': instance.searchObject,
      'session': instance.session,
      'nameOfHouse': instance.nameOfHouse,
      'nameOfMeeting': instance.nameOfMeeting,
      'issue': instance.issue,
      'date': instance.date,
      'closing': instance.closing,
      'speechRecord': instance.speechRecord.map((e) => e.toJson()).toList(),
      'meetingURL': instance.meetingURL,
      'pdfURL': instance.pdfURL,
    };

_$_MeetingRecordDetailSpeech _$$_MeetingRecordDetailSpeechFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordDetailSpeech',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordDetailSpeech(
          speechID: $checkedConvert('speechID', (v) => v as String),
          speechOrder: $checkedConvert('speechOrder', (v) => v as String),
          speaker: $checkedConvert('speaker', (v) => v as String),
          speakerYomi: $checkedConvert('speakerYomi', (v) => v as String),
          speakerGroup: $checkedConvert('speakerGroup', (v) => v as String),
          speakerPosition:
              $checkedConvert('speakerPosition', (v) => v as String),
          speakerRole: $checkedConvert('speakerRole', (v) => v as String),
          speech: $checkedConvert('speech', (v) => v as String),
          startPage: $checkedConvert('startPage', (v) => v as int),
          createTime: $checkedConvert('createTime', (v) => v as String),
          updateTime: $checkedConvert('updateTime', (v) => v as String),
          speechURL: $checkedConvert('speechURL', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordDetailSpeechToJson(
        _$_MeetingRecordDetailSpeech instance) =>
    <String, dynamic>{
      'speechID': instance.speechID,
      'speechOrder': instance.speechOrder,
      'speaker': instance.speaker,
      'speakerYomi': instance.speakerYomi,
      'speakerGroup': instance.speakerGroup,
      'speakerPosition': instance.speakerPosition,
      'speakerRole': instance.speakerRole,
      'speech': instance.speech,
      'startPage': instance.startPage,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'speechURL': instance.speechURL,
    };

_$_MeetingRecordSummaryResponse _$$_MeetingRecordSummaryResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordSummaryResponse',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordSummaryResponse(
          numberOfRecords: $checkedConvert('numberOfRecords', (v) => v as int),
          numberOfReturn: $checkedConvert('numberOfReturn', (v) => v as int),
          startRecord: $checkedConvert('startRecord', (v) => v as int),
          nextRecordPosition:
              $checkedConvert('nextRecordPosition', (v) => v as int?),
          meetingRecord: $checkedConvert(
              'meetingRecord',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => MeetingRecordSummary.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordSummaryResponseToJson(
    _$_MeetingRecordSummaryResponse instance) {
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
  val['meetingRecord'] = instance.meetingRecord.map((e) => e.toJson()).toList();
  return val;
}

_$_MeetingRecordSummary _$$_MeetingRecordSummaryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordSummary',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordSummary(
          issueID: $checkedConvert('issueID', (v) => v as String),
          imageKind: $checkedConvert('imageKind', (v) => v as String),
          searchObject: $checkedConvert('searchObject', (v) => v as int),
          session: $checkedConvert('session', (v) => v as int),
          nameOfHouse: $checkedConvert('nameOfHouse', (v) => v as String),
          nameOfMeeting: $checkedConvert('nameOfMeeting', (v) => v as String),
          issue: $checkedConvert('issue', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          closing: $checkedConvert('closing', (v) => v as bool? ?? false),
          speechRecord: $checkedConvert(
              'speechRecord',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => MeetingRecordSummarySpeech.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          meetingURL: $checkedConvert('meetingURL', (v) => v as String),
          pdfURL: $checkedConvert('pdfURL', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordSummaryToJson(
        _$_MeetingRecordSummary instance) =>
    <String, dynamic>{
      'issueID': instance.issueID,
      'imageKind': instance.imageKind,
      'searchObject': instance.searchObject,
      'session': instance.session,
      'nameOfHouse': instance.nameOfHouse,
      'nameOfMeeting': instance.nameOfMeeting,
      'issue': instance.issue,
      'date': instance.date,
      'closing': instance.closing,
      'speechRecord': instance.speechRecord.map((e) => e.toJson()).toList(),
      'meetingURL': instance.meetingURL,
      'pdfURL': instance.pdfURL,
    };

_$_MeetingRecordSummarySpeech _$$_MeetingRecordSummarySpeechFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MeetingRecordSummarySpeech',
      json,
      ($checkedConvert) {
        final val = _$_MeetingRecordSummarySpeech(
          speechID: $checkedConvert('speechID', (v) => v as String),
          speechOrder: $checkedConvert('speechOrder', (v) => v as String),
          speaker: $checkedConvert('speaker', (v) => v as String),
          speechURL: $checkedConvert('speechURL', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_MeetingRecordSummarySpeechToJson(
        _$_MeetingRecordSummarySpeech instance) =>
    <String, dynamic>{
      'speechID': instance.speechID,
      'speechOrder': instance.speechOrder,
      'speaker': instance.speaker,
      'speechURL': instance.speechURL,
    };
