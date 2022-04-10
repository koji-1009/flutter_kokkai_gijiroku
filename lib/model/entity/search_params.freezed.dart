// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchParamsTearOff {
  const _$SearchParamsTearOff();

  _SearchParams call(
      {int startRecord = 1,
      int? maximumRecords,
      NameOfHouse? nameOfHouse,
      String? nameOfMeeting,
      String? any,
      String? speaker,
      DateTime? from,
      DateTime? until,
      bool? supplementAndAppendix,
      bool? contentsAndIndex,
      SearchRange? searchRange,
      bool? closing,
      int? speechNumber,
      String? speakerPosition,
      String? speakerGroup,
      String? speakerRole,
      String? speechID,
      String? issueID,
      int? sessionFrom,
      int? sessionTo,
      int? issueFrom,
      int? issueTo}) {
    return _SearchParams(
      startRecord: startRecord,
      maximumRecords: maximumRecords,
      nameOfHouse: nameOfHouse,
      nameOfMeeting: nameOfMeeting,
      any: any,
      speaker: speaker,
      from: from,
      until: until,
      supplementAndAppendix: supplementAndAppendix,
      contentsAndIndex: contentsAndIndex,
      searchRange: searchRange,
      closing: closing,
      speechNumber: speechNumber,
      speakerPosition: speakerPosition,
      speakerGroup: speakerGroup,
      speakerRole: speakerRole,
      speechID: speechID,
      issueID: issueID,
      sessionFrom: sessionFrom,
      sessionTo: sessionTo,
      issueFrom: issueFrom,
      issueTo: issueTo,
    );
  }
}

/// @nodoc
const $SearchParams = _$SearchParamsTearOff();

/// @nodoc
mixin _$SearchParams {
  /// 開始位置
  /// 検索結果の取得開始位置を「1～検索件数」の範囲で指定可能。
  /// 省略時のデフォルト値は「1」
  int get startRecord => throw _privateConstructorUsedError;

  /// 一回の最大取得件数
  /// 一回のリクエストで取得できるレコード数を、会議単位簡易出力、発言単位出力の場合は「1～100」、会議単位出力の場合は「1～10」の範囲で指定可能。
  /// 省略時のデフォルト値は、会議単位簡易出力、発言単位出力の場合は「30」、会議単位出力の場合は「3」
  int? get maximumRecords => throw _privateConstructorUsedError;

  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  NameOfHouse? get nameOfHouse => throw _privateConstructorUsedError;

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get nameOfMeeting => throw _privateConstructorUsedError;

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get any => throw _privateConstructorUsedError;

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speaker => throw _privateConstructorUsedError;

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  DateTime? get from => throw _privateConstructorUsedError;

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  DateTime? get until => throw _privateConstructorUsedError;

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get supplementAndAppendix => throw _privateConstructorUsedError;

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get contentsAndIndex => throw _privateConstructorUsedError;

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  SearchRange? get searchRange => throw _privateConstructorUsedError;

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get closing => throw _privateConstructorUsedError;

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  int? get speechNumber => throw _privateConstructorUsedError;

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speakerPosition => throw _privateConstructorUsedError;

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speakerGroup => throw _privateConstructorUsedError;

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  String? get speakerRole => throw _privateConstructorUsedError;

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  String? get speechID => throw _privateConstructorUsedError;

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  String? get issueID => throw _privateConstructorUsedError;

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get sessionFrom => throw _privateConstructorUsedError;

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get sessionTo => throw _privateConstructorUsedError;

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get issueFrom => throw _privateConstructorUsedError;

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get issueTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
          SearchParams value, $Res Function(SearchParams) then) =
      _$SearchParamsCopyWithImpl<$Res>;
  $Res call(
      {int startRecord,
      int? maximumRecords,
      NameOfHouse? nameOfHouse,
      String? nameOfMeeting,
      String? any,
      String? speaker,
      DateTime? from,
      DateTime? until,
      bool? supplementAndAppendix,
      bool? contentsAndIndex,
      SearchRange? searchRange,
      bool? closing,
      int? speechNumber,
      String? speakerPosition,
      String? speakerGroup,
      String? speakerRole,
      String? speechID,
      String? issueID,
      int? sessionFrom,
      int? sessionTo,
      int? issueFrom,
      int? issueTo});
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res> implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  final SearchParams _value;
  // ignore: unused_field
  final $Res Function(SearchParams) _then;

  @override
  $Res call({
    Object? startRecord = freezed,
    Object? maximumRecords = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? any = freezed,
    Object? speaker = freezed,
    Object? from = freezed,
    Object? until = freezed,
    Object? supplementAndAppendix = freezed,
    Object? contentsAndIndex = freezed,
    Object? searchRange = freezed,
    Object? closing = freezed,
    Object? speechNumber = freezed,
    Object? speakerPosition = freezed,
    Object? speakerGroup = freezed,
    Object? speakerRole = freezed,
    Object? speechID = freezed,
    Object? issueID = freezed,
    Object? sessionFrom = freezed,
    Object? sessionTo = freezed,
    Object? issueFrom = freezed,
    Object? issueTo = freezed,
  }) {
    return _then(_value.copyWith(
      startRecord: startRecord == freezed
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      maximumRecords: maximumRecords == freezed
          ? _value.maximumRecords
          : maximumRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      nameOfHouse: nameOfHouse == freezed
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as NameOfHouse?,
      nameOfMeeting: nameOfMeeting == freezed
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String?,
      any: any == freezed
          ? _value.any
          : any // ignore: cast_nullable_to_non_nullable
              as String?,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: until == freezed
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplementAndAppendix: supplementAndAppendix == freezed
          ? _value.supplementAndAppendix
          : supplementAndAppendix // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentsAndIndex: contentsAndIndex == freezed
          ? _value.contentsAndIndex
          : contentsAndIndex // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchRange: searchRange == freezed
          ? _value.searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as SearchRange?,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool?,
      speechNumber: speechNumber == freezed
          ? _value.speechNumber
          : speechNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      speakerPosition: speakerPosition == freezed
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerGroup: speakerGroup == freezed
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerRole: speakerRole == freezed
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String?,
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String?,
      issueID: issueID == freezed
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionFrom: sessionFrom == freezed
          ? _value.sessionFrom
          : sessionFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTo: sessionTo == freezed
          ? _value.sessionTo
          : sessionTo // ignore: cast_nullable_to_non_nullable
              as int?,
      issueFrom: issueFrom == freezed
          ? _value.issueFrom
          : issueFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      issueTo: issueTo == freezed
          ? _value.issueTo
          : issueTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SearchParamsCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$SearchParamsCopyWith(
          _SearchParams value, $Res Function(_SearchParams) then) =
      __$SearchParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int startRecord,
      int? maximumRecords,
      NameOfHouse? nameOfHouse,
      String? nameOfMeeting,
      String? any,
      String? speaker,
      DateTime? from,
      DateTime? until,
      bool? supplementAndAppendix,
      bool? contentsAndIndex,
      SearchRange? searchRange,
      bool? closing,
      int? speechNumber,
      String? speakerPosition,
      String? speakerGroup,
      String? speakerRole,
      String? speechID,
      String? issueID,
      int? sessionFrom,
      int? sessionTo,
      int? issueFrom,
      int? issueTo});
}

/// @nodoc
class __$SearchParamsCopyWithImpl<$Res> extends _$SearchParamsCopyWithImpl<$Res>
    implements _$SearchParamsCopyWith<$Res> {
  __$SearchParamsCopyWithImpl(
      _SearchParams _value, $Res Function(_SearchParams) _then)
      : super(_value, (v) => _then(v as _SearchParams));

  @override
  _SearchParams get _value => super._value as _SearchParams;

  @override
  $Res call({
    Object? startRecord = freezed,
    Object? maximumRecords = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? any = freezed,
    Object? speaker = freezed,
    Object? from = freezed,
    Object? until = freezed,
    Object? supplementAndAppendix = freezed,
    Object? contentsAndIndex = freezed,
    Object? searchRange = freezed,
    Object? closing = freezed,
    Object? speechNumber = freezed,
    Object? speakerPosition = freezed,
    Object? speakerGroup = freezed,
    Object? speakerRole = freezed,
    Object? speechID = freezed,
    Object? issueID = freezed,
    Object? sessionFrom = freezed,
    Object? sessionTo = freezed,
    Object? issueFrom = freezed,
    Object? issueTo = freezed,
  }) {
    return _then(_SearchParams(
      startRecord: startRecord == freezed
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      maximumRecords: maximumRecords == freezed
          ? _value.maximumRecords
          : maximumRecords // ignore: cast_nullable_to_non_nullable
              as int?,
      nameOfHouse: nameOfHouse == freezed
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as NameOfHouse?,
      nameOfMeeting: nameOfMeeting == freezed
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String?,
      any: any == freezed
          ? _value.any
          : any // ignore: cast_nullable_to_non_nullable
              as String?,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: until == freezed
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplementAndAppendix: supplementAndAppendix == freezed
          ? _value.supplementAndAppendix
          : supplementAndAppendix // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentsAndIndex: contentsAndIndex == freezed
          ? _value.contentsAndIndex
          : contentsAndIndex // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchRange: searchRange == freezed
          ? _value.searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as SearchRange?,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool?,
      speechNumber: speechNumber == freezed
          ? _value.speechNumber
          : speechNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      speakerPosition: speakerPosition == freezed
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerGroup: speakerGroup == freezed
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerRole: speakerRole == freezed
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String?,
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String?,
      issueID: issueID == freezed
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionFrom: sessionFrom == freezed
          ? _value.sessionFrom
          : sessionFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTo: sessionTo == freezed
          ? _value.sessionTo
          : sessionTo // ignore: cast_nullable_to_non_nullable
              as int?,
      issueFrom: issueFrom == freezed
          ? _value.issueFrom
          : issueFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      issueTo: issueTo == freezed
          ? _value.issueTo
          : issueTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SearchParams with DiagnosticableTreeMixin implements _SearchParams {
  const _$_SearchParams(
      {this.startRecord = 1,
      this.maximumRecords,
      this.nameOfHouse,
      this.nameOfMeeting,
      this.any,
      this.speaker,
      this.from,
      this.until,
      this.supplementAndAppendix,
      this.contentsAndIndex,
      this.searchRange,
      this.closing,
      this.speechNumber,
      this.speakerPosition,
      this.speakerGroup,
      this.speakerRole,
      this.speechID,
      this.issueID,
      this.sessionFrom,
      this.sessionTo,
      this.issueFrom,
      this.issueTo});

  @JsonKey()
  @override

  /// 開始位置
  /// 検索結果の取得開始位置を「1～検索件数」の範囲で指定可能。
  /// 省略時のデフォルト値は「1」
  final int startRecord;
  @override

  /// 一回の最大取得件数
  /// 一回のリクエストで取得できるレコード数を、会議単位簡易出力、発言単位出力の場合は「1～100」、会議単位出力の場合は「1～10」の範囲で指定可能。
  /// 省略時のデフォルト値は、会議単位簡易出力、発言単位出力の場合は「30」、会議単位出力の場合は「3」
  final int? maximumRecords;
  @override

  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  final NameOfHouse? nameOfHouse;
  @override

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  final String? nameOfMeeting;
  @override

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  final String? any;
  @override

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  final String? speaker;
  @override

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  final DateTime? from;
  @override

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  final DateTime? until;
  @override

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  final bool? supplementAndAppendix;
  @override

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  final bool? contentsAndIndex;
  @override

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  final SearchRange? searchRange;
  @override

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  final bool? closing;
  @override

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  final int? speechNumber;
  @override

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  final String? speakerPosition;
  @override

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  final String? speakerGroup;
  @override

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  final String? speakerRole;
  @override

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  final String? speechID;
  @override

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  final String? issueID;
  @override

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  final int? sessionFrom;
  @override

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  final int? sessionTo;
  @override

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  final int? issueFrom;
  @override

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  final int? issueTo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchParams(startRecord: $startRecord, maximumRecords: $maximumRecords, nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, any: $any, speaker: $speaker, from: $from, until: $until, supplementAndAppendix: $supplementAndAppendix, contentsAndIndex: $contentsAndIndex, searchRange: $searchRange, closing: $closing, speechNumber: $speechNumber, speakerPosition: $speakerPosition, speakerGroup: $speakerGroup, speakerRole: $speakerRole, speechID: $speechID, issueID: $issueID, sessionFrom: $sessionFrom, sessionTo: $sessionTo, issueFrom: $issueFrom, issueTo: $issueTo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchParams'))
      ..add(DiagnosticsProperty('startRecord', startRecord))
      ..add(DiagnosticsProperty('maximumRecords', maximumRecords))
      ..add(DiagnosticsProperty('nameOfHouse', nameOfHouse))
      ..add(DiagnosticsProperty('nameOfMeeting', nameOfMeeting))
      ..add(DiagnosticsProperty('any', any))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('until', until))
      ..add(DiagnosticsProperty('supplementAndAppendix', supplementAndAppendix))
      ..add(DiagnosticsProperty('contentsAndIndex', contentsAndIndex))
      ..add(DiagnosticsProperty('searchRange', searchRange))
      ..add(DiagnosticsProperty('closing', closing))
      ..add(DiagnosticsProperty('speechNumber', speechNumber))
      ..add(DiagnosticsProperty('speakerPosition', speakerPosition))
      ..add(DiagnosticsProperty('speakerGroup', speakerGroup))
      ..add(DiagnosticsProperty('speakerRole', speakerRole))
      ..add(DiagnosticsProperty('speechID', speechID))
      ..add(DiagnosticsProperty('issueID', issueID))
      ..add(DiagnosticsProperty('sessionFrom', sessionFrom))
      ..add(DiagnosticsProperty('sessionTo', sessionTo))
      ..add(DiagnosticsProperty('issueFrom', issueFrom))
      ..add(DiagnosticsProperty('issueTo', issueTo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchParams &&
            const DeepCollectionEquality()
                .equals(other.startRecord, startRecord) &&
            const DeepCollectionEquality()
                .equals(other.maximumRecords, maximumRecords) &&
            const DeepCollectionEquality()
                .equals(other.nameOfHouse, nameOfHouse) &&
            const DeepCollectionEquality()
                .equals(other.nameOfMeeting, nameOfMeeting) &&
            const DeepCollectionEquality().equals(other.any, any) &&
            const DeepCollectionEquality().equals(other.speaker, speaker) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.until, until) &&
            const DeepCollectionEquality()
                .equals(other.supplementAndAppendix, supplementAndAppendix) &&
            const DeepCollectionEquality()
                .equals(other.contentsAndIndex, contentsAndIndex) &&
            const DeepCollectionEquality()
                .equals(other.searchRange, searchRange) &&
            const DeepCollectionEquality().equals(other.closing, closing) &&
            const DeepCollectionEquality()
                .equals(other.speechNumber, speechNumber) &&
            const DeepCollectionEquality()
                .equals(other.speakerPosition, speakerPosition) &&
            const DeepCollectionEquality()
                .equals(other.speakerGroup, speakerGroup) &&
            const DeepCollectionEquality()
                .equals(other.speakerRole, speakerRole) &&
            const DeepCollectionEquality().equals(other.speechID, speechID) &&
            const DeepCollectionEquality().equals(other.issueID, issueID) &&
            const DeepCollectionEquality()
                .equals(other.sessionFrom, sessionFrom) &&
            const DeepCollectionEquality().equals(other.sessionTo, sessionTo) &&
            const DeepCollectionEquality().equals(other.issueFrom, issueFrom) &&
            const DeepCollectionEquality().equals(other.issueTo, issueTo));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(startRecord),
        const DeepCollectionEquality().hash(maximumRecords),
        const DeepCollectionEquality().hash(nameOfHouse),
        const DeepCollectionEquality().hash(nameOfMeeting),
        const DeepCollectionEquality().hash(any),
        const DeepCollectionEquality().hash(speaker),
        const DeepCollectionEquality().hash(from),
        const DeepCollectionEquality().hash(until),
        const DeepCollectionEquality().hash(supplementAndAppendix),
        const DeepCollectionEquality().hash(contentsAndIndex),
        const DeepCollectionEquality().hash(searchRange),
        const DeepCollectionEquality().hash(closing),
        const DeepCollectionEquality().hash(speechNumber),
        const DeepCollectionEquality().hash(speakerPosition),
        const DeepCollectionEquality().hash(speakerGroup),
        const DeepCollectionEquality().hash(speakerRole),
        const DeepCollectionEquality().hash(speechID),
        const DeepCollectionEquality().hash(issueID),
        const DeepCollectionEquality().hash(sessionFrom),
        const DeepCollectionEquality().hash(sessionTo),
        const DeepCollectionEquality().hash(issueFrom),
        const DeepCollectionEquality().hash(issueTo)
      ]);

  @JsonKey(ignore: true)
  @override
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      __$SearchParamsCopyWithImpl<_SearchParams>(this, _$identity);
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams(
      {int startRecord,
      int? maximumRecords,
      NameOfHouse? nameOfHouse,
      String? nameOfMeeting,
      String? any,
      String? speaker,
      DateTime? from,
      DateTime? until,
      bool? supplementAndAppendix,
      bool? contentsAndIndex,
      SearchRange? searchRange,
      bool? closing,
      int? speechNumber,
      String? speakerPosition,
      String? speakerGroup,
      String? speakerRole,
      String? speechID,
      String? issueID,
      int? sessionFrom,
      int? sessionTo,
      int? issueFrom,
      int? issueTo}) = _$_SearchParams;

  @override

  /// 開始位置
  /// 検索結果の取得開始位置を「1～検索件数」の範囲で指定可能。
  /// 省略時のデフォルト値は「1」
  int get startRecord;
  @override

  /// 一回の最大取得件数
  /// 一回のリクエストで取得できるレコード数を、会議単位簡易出力、発言単位出力の場合は「1～100」、会議単位出力の場合は「1～10」の範囲で指定可能。
  /// 省略時のデフォルト値は、会議単位簡易出力、発言単位出力の場合は「30」、会議単位出力の場合は「3」
  int? get maximumRecords;
  @override

  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  NameOfHouse? get nameOfHouse;
  @override

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get nameOfMeeting;
  @override

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get any;
  @override

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speaker;
  @override

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  DateTime? get from;
  @override

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  DateTime? get until;
  @override

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get supplementAndAppendix;
  @override

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get contentsAndIndex;
  @override

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  SearchRange? get searchRange;
  @override

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool? get closing;
  @override

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  int? get speechNumber;
  @override

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speakerPosition;
  @override

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  String? get speakerGroup;
  @override

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  String? get speakerRole;
  @override

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  String? get speechID;
  @override

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  String? get issueID;
  @override

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get sessionFrom;
  @override

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get sessionTo;
  @override

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get issueFrom;
  @override

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  int? get issueTo;
  @override
  @JsonKey(ignore: true)
  _$SearchParamsCopyWith<_SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}
