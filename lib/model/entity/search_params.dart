import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_params.freezed.dart';

enum NameOfHouse {
  /// none
  none,

  /// 衆議院
  houseOfRepresentatives,

  /// 参議院
  houseOfCouncilors,

  /// 両院
  bothHouses,

  /// 両院協議会
  /// 両院と両院協議会のリクエスト結果は同一のため、両院のみ使用
  // conferenceOfBothHouses,
}

extension NameOfHouseExt on NameOfHouse {
  String? get value {
    switch (this) {
      case NameOfHouse.none:
        return null;
      case NameOfHouse.houseOfRepresentatives:
        return '衆議院';
      case NameOfHouse.houseOfCouncilors:
        return '参議院';
      case NameOfHouse.bothHouses:
        return '両院';
    }
  }
}

enum SearchRange {
  /// none
  none,

  /// 冒頭
  begging,

  /// 本文
  text,

  /// 冒頭・本文
  all,
}

extension SearchRangeExt on SearchRange {
  String? get value {
    switch (this) {
      case SearchRange.none:
        return null;
      case SearchRange.begging:
        return '冒頭';
      case SearchRange.text:
        return '本文';
      case SearchRange.all:
        return '冒頭・本文';
    }
  }
}

enum SpeakerRole {
  /// none
  none,

  /// 証人
  swornWitness,

  /// 参考人
  unswornWitness,

  /// 公述人
  publicSpeaker,
}

extension SpeakerRoleExt on SpeakerRole {
  String? get value {
    switch (this) {
      case SpeakerRole.none:
        return null;
      case SpeakerRole.swornWitness:
        return '証人';
      case SpeakerRole.unswornWitness:
        return '参考人';
      case SpeakerRole.publicSpeaker:
        return '公述人';
    }
  }
}

@freezed
class SearchParams with _$SearchParams {
  const factory SearchParams({
    /*
    presenterで対応するため、2項目はparamsから除外
    /// 開始位置
    /// 検索結果の取得開始位置を「1～検索件数」の範囲で指定可能。
    /// 省略時のデフォルト値は「1」
    @Default(1) int startRecord,

    /// 一回の最大取得件数
    /// 一回のリクエストで取得できるレコード数を、会議単位簡易出力、発言単位出力の場合は「1～100」、会議単位出力の場合は「1～10」の範囲で指定可能。
    /// 省略時のデフォルト値は、会議単位簡易出力、発言単位出力の場合は「30」、会議単位出力の場合は「3」
    int? maximumRecords,
    */

    /// 院名
    /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
    /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
    NameOfHouse? nameOfHouse,

    /// 会議名
    /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    String? nameOfMeeting,

    /// 検索語
    /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    String? any,

    /// 発言者名
    /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
    /// 省略可（省略時は検索条件に含めない）。
    String? speaker,

    /// 開会日付／始点
    /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
    /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
    DateTime? from,

    /// 開会日付／終点
    /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
    /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
    DateTime? until,

    /// 追録・附録指定
    /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    bool? supplementAndAppendix,

    /// 目次・索引指定
    /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    bool? contentsAndIndex,

    /// 議事冒頭・本文指定
    /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
    /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
    SearchRange? searchRange,

    /// 閉会中指定
    /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
    /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
    bool? closing,

    /// 発言番号
    /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）
    int? speechNumber,

    /// 発言者肩書き
    /// 発言者の肩書きを指定可能。部分一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    String? speakerPosition,

    /// 発言者所属会派
    /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
    /// 省略可（省略時は検索条件に含めない）。
    String? speakerGroup,

    /// 発言者役割
    /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
    /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
    SpeakerRole? speakerRole,

    /// 発言ID
    /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
    String? speechID,

    /// 会議録ID
    /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
    String? issueID,

    /// 国会回次From
    /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    int? sessionFrom,

    /// 国会回次To
    /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    int? sessionTo,

    /// 号数From
    /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    int? issueFrom,

    /// 号数To
    /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
    /// 省略可（省略時は検索条件に含めない）。
    int? issueTo,
  }) = _SearchParams;
}

extension SearchParamsExt on SearchParams {
  Map<String, String> get query => {
        if (nameOfHouse != null && nameOfHouse != NameOfHouse.none)
          'nameOfHouse': nameOfHouse!.value!,
        if (nameOfMeeting != null) 'nameOfMeeting': nameOfMeeting!,
        if (any != null) 'any': any!,
        if (speaker != null) 'speaker': speaker!,
        if (from != null) 'from': from!.localDate,
        if (until != null) 'until': until!.localDate,
        if (supplementAndAppendix != null)
          'supplementAndAppendix': supplementAndAppendix!.toString(),
        if (contentsAndIndex != null)
          'contentsAndIndex': contentsAndIndex!.toString(),
        if (searchRange != null && searchRange != SearchRange.none)
          'SearchRange': searchRange!.value!,
        if (closing != null) 'closing': closing!.toString(),
        if (speechNumber != null) 'speechNumber': speechNumber!.toString(),
        if (speakerPosition != null) 'speakerPosition': speakerPosition!,
        if (speakerGroup != null) 'speakerGroup': speakerGroup!,
        if (speakerRole != null && speakerRole != NameOfHouse.none)
          'speakerRole': speakerRole!.value!,
        if (speechID != null) 'speechID': speechID!,
        if (issueID != null) 'issueID': issueID!,
        if (sessionFrom != null) 'sessionFrom': sessionFrom!.toString(),
        if (sessionTo != null) 'sessionTo': sessionTo!.toString(),
        if (issueFrom != null) 'issueFrom': issueFrom!.toString(),
        if (issueTo != null) 'issueTo': issueTo!.toString(),
      };
}
