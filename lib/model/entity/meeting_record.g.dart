// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingRecordResponseDetailImpl _$$MeetingRecordResponseDetailImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordResponseDetailImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordResponseDetailImpl(
          numberOfRecords:
              $checkedConvert('numberOfRecords', (v) => (v as num).toInt()),
          numberOfReturn:
              $checkedConvert('numberOfReturn', (v) => (v as num).toInt()),
          startRecord:
              $checkedConvert('startRecord', (v) => (v as num).toInt()),
          nextRecordPosition: $checkedConvert(
              'nextRecordPosition', (v) => (v as num?)?.toInt()),
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

Map<String, dynamic> _$$MeetingRecordResponseDetailImplToJson(
    _$MeetingRecordResponseDetailImpl instance) {
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

_$MeetingRecordDetailImpl _$$MeetingRecordDetailImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordDetailImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordDetailImpl(
          issueID: $checkedConvert('issueID', (v) => v as String),
          imageKind: $checkedConvert('imageKind', (v) => v as String),
          searchObject:
              $checkedConvert('searchObject', (v) => (v as num).toInt()),
          session: $checkedConvert('session', (v) => (v as num).toInt()),
          nameOfHouse: $checkedConvert('nameOfHouse', (v) => v as String),
          nameOfMeeting: $checkedConvert('nameOfMeeting', (v) => v as String),
          issue: $checkedConvert('issue', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          closing: $checkedConvert('closing', (v) => v as String? ?? ''),
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

Map<String, dynamic> _$$MeetingRecordDetailImplToJson(
        _$MeetingRecordDetailImpl instance) =>
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

_$MeetingRecordDetailSpeechImpl _$$MeetingRecordDetailSpeechImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordDetailSpeechImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordDetailSpeechImpl(
          speechID: $checkedConvert('speechID', (v) => v as String),
          speechOrder:
              $checkedConvert('speechOrder', (v) => (v as num).toInt()),
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
          startPage: $checkedConvert('startPage', (v) => (v as num).toInt()),
          createTime: $checkedConvert('createTime', (v) => v as String),
          updateTime: $checkedConvert('updateTime', (v) => v as String),
          speechURL: $checkedConvert('speechURL', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeetingRecordDetailSpeechImplToJson(
        _$MeetingRecordDetailSpeechImpl instance) =>
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

_$MeetingRecordSummaryResponseImpl _$$MeetingRecordSummaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordSummaryResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordSummaryResponseImpl(
          numberOfRecords:
              $checkedConvert('numberOfRecords', (v) => (v as num).toInt()),
          numberOfReturn:
              $checkedConvert('numberOfReturn', (v) => (v as num).toInt()),
          startRecord:
              $checkedConvert('startRecord', (v) => (v as num).toInt()),
          nextRecordPosition: $checkedConvert(
              'nextRecordPosition', (v) => (v as num?)?.toInt()),
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

Map<String, dynamic> _$$MeetingRecordSummaryResponseImplToJson(
    _$MeetingRecordSummaryResponseImpl instance) {
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

_$MeetingRecordSummaryImpl _$$MeetingRecordSummaryImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordSummaryImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordSummaryImpl(
          issueID: $checkedConvert('issueID', (v) => v as String),
          imageKind: $checkedConvert('imageKind', (v) => v as String),
          searchObject:
              $checkedConvert('searchObject', (v) => (v as num).toInt()),
          session: $checkedConvert('session', (v) => (v as num).toInt()),
          nameOfHouse: $checkedConvert('nameOfHouse', (v) => v as String),
          nameOfMeeting: $checkedConvert('nameOfMeeting', (v) => v as String),
          issue: $checkedConvert('issue', (v) => v as String),
          date: $checkedConvert('date', (v) => v as String),
          closing: $checkedConvert('closing', (v) => v as String? ?? ''),
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

Map<String, dynamic> _$$MeetingRecordSummaryImplToJson(
        _$MeetingRecordSummaryImpl instance) =>
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

_$MeetingRecordSummarySpeechImpl _$$MeetingRecordSummarySpeechImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeetingRecordSummarySpeechImpl',
      json,
      ($checkedConvert) {
        final val = _$MeetingRecordSummarySpeechImpl(
          speechID: $checkedConvert('speechID', (v) => v as String),
          speechOrder:
              $checkedConvert('speechOrder', (v) => (v as num).toInt()),
          speaker: $checkedConvert('speaker', (v) => v as String),
          speechURL: $checkedConvert('speechURL', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$MeetingRecordSummarySpeechImplToJson(
        _$MeetingRecordSummarySpeechImpl instance) =>
    <String, dynamic>{
      'speechID': instance.speechID,
      'speechOrder': instance.speechOrder,
      'speaker': instance.speaker,
      'speechURL': instance.speechURL,
    };
