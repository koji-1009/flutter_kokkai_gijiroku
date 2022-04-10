import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speech_record.freezed.dart';

part 'speech_record.g.dart';

/// 発言単位出力
@freezed
class SpeechRecordResponse with _$SpeechRecordResponse {
  const factory SpeechRecordResponse({
    /// 総結果件数
    required int numberOfRecords,

    /// 返戻件数
    required int numberOfReturn,

    /// 開始位置
    required int startRecord,

    /// 次開始位置（※存在する場合のみ）
    required int? nextRecordPosition,

    /// 発言リスト
    @Default([]) List<SpeechRecord> speechRecord,
  }) = _SpeechRecordResponsee;

  factory SpeechRecordResponse.fromJson(Map<String, dynamic> json) =>
      _$SpeechRecordResponseFromJson(json);
}

@freezed
class SpeechRecord with _$SpeechRecord {
  const factory SpeechRecord({
    /// 発言ID
    required String speechID,

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
    @Default(false) bool closing,

    /// 発言番号
    required int speechOrder,

    /// 発言者名
    required String speaker,

    /// 発言者よみ
    @Default('') String speakerYomi,

    /// 発言者所属会派
    @Default('') String speakerGroup,

    /// 発言者肩書き
    @Default('') String speakerPosition,

    /// 発言者役割
    @Default('') String speakerRole,

    /// 発言
    required String speech,

    /// 発言が掲載されている開始ページ
    required int startPage,

    /// 発言URL
    required String speechURL,

    /// 会議録テキスト表示画面のURL
    required String meetingURL,

    /// 会議録PDF表示画面のURL（※存在する場合のみ）
    @Default('') String pdfURL,
  }) = _SpeechRecord;

  factory SpeechRecord.fromJson(Map<String, dynamic> json) =>
      _$SpeechRecordFromJson(json);
}
