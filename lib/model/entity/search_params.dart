import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'search_params.freezed.dart';
part 'search_params.g.dart';

@HiveType(typeId: 11)
enum NameOfHouse {
  /// none
  @HiveField(0)
  none,

  /// 衆議院
  @HiveField(1)
  houseOfRepresentatives,

  /// 参議院
  @HiveField(2)
  houseOfCouncilors,

  /// 両院
  @HiveField(3)
  bothHouses,

  /// 両院協議会
  /// 両院と両院協議会のリクエスト結果は同一のため、両院のみ使用
  // @HiveField(4)
  // conferenceOfBothHouses,
}

extension NameOfHouseExt on NameOfHouse {
  String get value {
    switch (this) {
      case NameOfHouse.none:
        return '';
      case NameOfHouse.houseOfRepresentatives:
        return '衆議院';
      case NameOfHouse.houseOfCouncilors:
        return '参議院';
      case NameOfHouse.bothHouses:
        return '両院';
    }
  }
}

@HiveType(typeId: 12)
enum SearchRange {
  /// none
  @HiveField(0)
  none,

  /// 冒頭
  @HiveField(1)
  begging,

  /// 本文
  @HiveField(2)
  text,

  /// 冒頭・本文
  @HiveField(3)
  all,
}

extension SearchRangeExt on SearchRange {
  String get value {
    switch (this) {
      case SearchRange.none:
        return '';
      case SearchRange.begging:
        return '冒頭';
      case SearchRange.text:
        return '本文';
      case SearchRange.all:
        return '冒頭・本文';
    }
  }
}

@HiveType(typeId: 13)
enum SpeakerRole {
  /// none
  @HiveField(0)
  none,

  /// 証人
  @HiveField(1)
  swornWitness,

  /// 参考人
  @HiveField(2)
  unswornWitness,

  /// 公述人
  @HiveField(3)
  publicSpeaker,
}

extension SpeakerRoleExt on SpeakerRole {
  String get value {
    switch (this) {
      case SpeakerRole.none:
        return '';
      case SpeakerRole.swornWitness:
        return '証人';
      case SpeakerRole.unswornWitness:
        return '参考人';
      case SpeakerRole.publicSpeaker:
        return '公述人';
    }
  }
}

@HiveType(typeId: 14)
@freezed
class SearchParams with _$SearchParams {
  const factory SearchParams({
    /// 院名
    /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
    /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
    @HiveField(0) @Default(NameOfHouse.none) NameOfHouse nameOfHouse,

    /// 会議名
    /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(1) @Default('') String nameOfMeeting,

    /// 検索語
    /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(2) @Default('') String any,

    /// 発言者名
    /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(3) @Default('') String speaker,

    /// 開会日付／始点
    /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
    /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
    @HiveField(4) DateTime? from,

    /// 開会日付／終点
    /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
    /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
    @HiveField(5) DateTime? until,

    /// 追録・附録指定
    /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    @HiveField(6) @Default(false) bool supplementAndAppendix,

    /// 目次・索引指定
    /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    @HiveField(7) @Default(false) bool contentsAndIndex,

    /// 議事冒頭・本文指定
    /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
    /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
    @HiveField(8) @Default(SearchRange.none) SearchRange searchRange,

    /// 閉会中指定
    /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    @HiveField(9) @Default(false) bool closing,

    /// 発言番号
    /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）
    @HiveField(10) int? speechNumber,

    /// 発言者肩書き
    /// 発言者の肩書きを指定可能。部分一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(11) @Default('') String speakerPosition,

    /// 発言者所属会派
    /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(12) @Default('') String speakerGroup,

    /// 発言者役割
    /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
    /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
    @HiveField(13) @Default(SpeakerRole.none) SpeakerRole speakerRole,

    /// 発言ID
    /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
    @HiveField(14) @Default('') String speechID,

    /// 会議録ID
    /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
    @HiveField(15) @Default('') String issueID,

    /// 国会回次From
    /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(16) int? sessionFrom,

    /// 国会回次To
    /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(17) int? sessionTo,

    /// 号数From
    /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(18) int? issueFrom,

    /// 号数To
    /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    @HiveField(19) int? issueTo,
  }) = _SearchParams;

  factory SearchParams.fromJson(Map<String, dynamic> json) =>
      _$SearchParamsFromJson(json);
}

extension SearchParamsExt on SearchParams {
  Map<String, String> get query => {
        if (nameOfHouse != NameOfHouse.none) 'nameOfHouse': nameOfHouse.value,
        if (nameOfMeeting.isNotEmpty) 'nameOfMeeting': nameOfMeeting,
        if (any.isNotEmpty) 'any': any,
        if (speaker.isNotEmpty) 'speaker': speaker,
        if (from != null) 'from': from!.localDate,
        if (until != null) 'until': until!.localDate,
        if (supplementAndAppendix) 'supplementAndAppendix': 'true',
        if (contentsAndIndex) 'contentsAndIndex': 'true',
        if (searchRange != SearchRange.none) 'SearchRange': searchRange.value,
        if (closing) 'closing': 'true',
        if (speechNumber != null) 'speechNumber': '$speechNumber',
        if (speakerPosition.isNotEmpty) 'speakerPosition': speakerPosition,
        if (speakerGroup.isNotEmpty) 'speakerGroup': speakerGroup,
        if (speakerRole != SpeakerRole.none) 'speakerRole': speakerRole.value,
        if (speechID.isNotEmpty) 'speechID': speechID,
        if (issueID.isNotEmpty) 'issueID': issueID,
        if (sessionFrom != null) 'sessionFrom': '$sessionFrom',
        if (sessionTo != null) 'sessionTo': '$sessionTo',
        if (issueFrom != null) 'issueFrom': '$issueFrom',
        if (issueTo != null) 'issueTo': '$issueTo',
      };
}
