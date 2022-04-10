import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_record.freezed.dart';
part 'meeting_record.g.dart';

/// 会議単位出力
@freezed
class MeetingRecordResponseDetail with _$MeetingRecordResponseDetail {
  const factory MeetingRecordResponseDetail({
    /// 総結果件数
    required int numberOfRecords,

    /// 返戻件数
    required int numberOfReturn,

    /// 開始位置
    required int startRecord,

    /// 次開始位置（※存在する場合のみ）
    required int? nextRecordPosition,

    /// 会議一覧
    @Default([]) List<MeetingRecordResponseDetail> meetingRecord,
  }) = _MeetingRecordResponseDetail;

  factory MeetingRecordResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordResponseDetailFromJson(json);
}

@freezed
class MeetingRecordDetail with _$MeetingRecordDetail {
  const factory MeetingRecordDetail({
    /// 会議録ID
    required String issueID,

    /// イメージ種別（会議録・目次・索引・附録・追録）
    required String imageKind,

    /// 検索対象箇所（議事冒頭・本文）
    required int searchObject,

    /// 国会回次
    required int session,

    /// 院名
    required String nameOfHouse,

    /// 会議名
    required String nameOfMeeting,

    /// 号数
    required String issue,

    /// 開催日付
    required String date,

    /// 閉会中フラグ
    /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    @Default(false) bool closing,

    /// 発言リスト
    @Default([]) List<MeetingRecordSpeechDetail> speechRecord,

    /// 会議録テキスト表示画面のURL
    required String meetingURL,

    /// 会議録PDF表示画面のURL（※存在する場合のみ）
    @Default('') String pdfURL,
  }) = _MeetingRecordDetail;

  factory MeetingRecordDetail.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordDetailFromJson(json);
}

@freezed
class MeetingRecordSpeechDetail with _$MeetingRecordSpeechDetail {
  const factory MeetingRecordSpeechDetail({
    /// 発言ID
    required String speechID,

    /// 発言番号
    required String speechOrder,

    /// 発言者名
    required String speaker,

    /// 発言者よみ
    required String speakerYomi,

    /// 発言者所属会派
    required String speakerGroup,

    /// 発言者肩書き
    required String speakerPosition,

    /// 発言者役割
    required String speakerRole,

    /// 発言
    required String speech,

    /// 発言が掲載されている開始ページ
    required int startPage,

    /// レコード登録日時
    required String createTime,

    ///  レコード更新日時
    required String updateTime,

    /// 発言URL
    required String speechURL,
  }) = _MeetingRecordSpeechDetail;

  factory MeetingRecordSpeechDetail.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordSpeechDetailFromJson(json);
}

/// 会議単位簡易出力
@freezed
class MeetingRecordResponseSummary with _$MeetingRecordResponseSummary {
  const factory MeetingRecordResponseSummary({
    /// 総結果件数
    required int numberOfRecords,

    /// 返戻件数
    required int numberOfReturn,

    /// 開始位置
    required int startRecord,

    /// 次開始位置（※存在する場合のみ）
    required int? nextRecordPosition,

    /// 会議一覧
    @Default([]) List<MeetingRecordSummary> meetingRecord,
  }) = _MeetingRecordResponseSummary;

  factory MeetingRecordResponseSummary.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordResponseSummaryFromJson(json);
}

@freezed
class MeetingRecordSummary with _$MeetingRecordSummary {
  const factory MeetingRecordSummary({
    /// 会議録ID
    required String issueID,

    /// イメージ種別（会議録・目次・索引・附録・追録）
    required String imageKind,

    /// 検索対象箇所（議事冒頭・本文）
    required int searchObject,

    /// 国会回次
    required int session,

    /// 院名
    required String nameOfHouse,

    /// 会議名
    required String nameOfMeeting,

    /// 号数
    required String issue,

    /// 開催日付
    required String date,

    /// 閉会中フラグ
    /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    @Default(false) bool closing,

    /// 発言リスト
    @Default([]) List<MeetingRecordSpeechSummary> speechRecord,

    /// 会議録テキスト表示画面のURL
    required String meetingURL,

    /// 会議録PDF表示画面のURL（※存在する場合のみ）
    @Default('') String pdfURL,
  }) = _MeetingRecordSummary;

  factory MeetingRecordSummary.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordSummaryFromJson(json);
}

@freezed
class MeetingRecordSpeechSummary with _$MeetingRecordSpeechSummary {
  const factory MeetingRecordSpeechSummary({
    /// 発言ID
    required String speechID,

    /// 発言番号
    required String speechOrder,

    /// 発言者名
    required String speaker,

    /// 発言URL
    required String speechURL,
  }) = _MeetingRecordSpeechSummary;

  factory MeetingRecordSpeechSummary.fromJson(Map<String, dynamic> json) =>
      _$MeetingRecordSpeechSummaryFromJson(json);
}
