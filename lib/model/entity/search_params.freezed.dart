// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchParams _$SearchParamsFromJson(Map<String, dynamic> json) {
  return _SearchParams.fromJson(json);
}

/// @nodoc
mixin _$SearchParams {
  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  @HiveField(0)
  NameOfHouse get nameOfHouse => throw _privateConstructorUsedError;

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(1)
  String get nameOfMeeting => throw _privateConstructorUsedError;

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(2)
  String get any => throw _privateConstructorUsedError;

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(3)
  String get speaker => throw _privateConstructorUsedError;

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  @HiveField(4)
  DateTime? get from => throw _privateConstructorUsedError;

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  @HiveField(5)
  DateTime? get until => throw _privateConstructorUsedError;

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(6)
  bool get supplementAndAppendix => throw _privateConstructorUsedError;

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(7)
  bool get contentsAndIndex => throw _privateConstructorUsedError;

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  @HiveField(8)
  SearchRange get searchRange => throw _privateConstructorUsedError;

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(9)
  bool get closing => throw _privateConstructorUsedError;

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  @HiveField(10)
  int? get speechNumber => throw _privateConstructorUsedError;

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(11)
  String get speakerPosition => throw _privateConstructorUsedError;

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(12)
  String get speakerGroup => throw _privateConstructorUsedError;

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  @HiveField(13)
  SpeakerRole get speakerRole => throw _privateConstructorUsedError;

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @HiveField(14)
  String get speechID => throw _privateConstructorUsedError;

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @HiveField(15)
  String get issueID => throw _privateConstructorUsedError;

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(16)
  int? get sessionFrom => throw _privateConstructorUsedError;

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(17)
  int? get sessionTo => throw _privateConstructorUsedError;

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(18)
  int? get issueFrom => throw _privateConstructorUsedError;

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(19)
  int? get issueTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchParamsCopyWith<SearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchParamsCopyWith<$Res> {
  factory $SearchParamsCopyWith(
          SearchParams value, $Res Function(SearchParams) then) =
      _$SearchParamsCopyWithImpl<$Res, SearchParams>;
  @useResult
  $Res call(
      {@HiveField(0) NameOfHouse nameOfHouse,
      @HiveField(1) String nameOfMeeting,
      @HiveField(2) String any,
      @HiveField(3) String speaker,
      @HiveField(4) DateTime? from,
      @HiveField(5) DateTime? until,
      @HiveField(6) bool supplementAndAppendix,
      @HiveField(7) bool contentsAndIndex,
      @HiveField(8) SearchRange searchRange,
      @HiveField(9) bool closing,
      @HiveField(10) int? speechNumber,
      @HiveField(11) String speakerPosition,
      @HiveField(12) String speakerGroup,
      @HiveField(13) SpeakerRole speakerRole,
      @HiveField(14) String speechID,
      @HiveField(15) String issueID,
      @HiveField(16) int? sessionFrom,
      @HiveField(17) int? sessionTo,
      @HiveField(18) int? issueFrom,
      @HiveField(19) int? issueTo});
}

/// @nodoc
class _$SearchParamsCopyWithImpl<$Res, $Val extends SearchParams>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? any = null,
    Object? speaker = null,
    Object? from = freezed,
    Object? until = freezed,
    Object? supplementAndAppendix = null,
    Object? contentsAndIndex = null,
    Object? searchRange = null,
    Object? closing = null,
    Object? speechNumber = freezed,
    Object? speakerPosition = null,
    Object? speakerGroup = null,
    Object? speakerRole = null,
    Object? speechID = null,
    Object? issueID = null,
    Object? sessionFrom = freezed,
    Object? sessionTo = freezed,
    Object? issueFrom = freezed,
    Object? issueTo = freezed,
  }) {
    return _then(_value.copyWith(
      nameOfHouse: null == nameOfHouse
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as NameOfHouse,
      nameOfMeeting: null == nameOfMeeting
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      any: null == any
          ? _value.any
          : any // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: freezed == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplementAndAppendix: null == supplementAndAppendix
          ? _value.supplementAndAppendix
          : supplementAndAppendix // ignore: cast_nullable_to_non_nullable
              as bool,
      contentsAndIndex: null == contentsAndIndex
          ? _value.contentsAndIndex
          : contentsAndIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRange: null == searchRange
          ? _value.searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as SearchRange,
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool,
      speechNumber: freezed == speechNumber
          ? _value.speechNumber
          : speechNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      speakerPosition: null == speakerPosition
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: null == speakerGroup
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: null == speakerRole
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as SpeakerRole,
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: null == issueID
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      sessionFrom: freezed == sessionFrom
          ? _value.sessionFrom
          : sessionFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTo: freezed == sessionTo
          ? _value.sessionTo
          : sessionTo // ignore: cast_nullable_to_non_nullable
              as int?,
      issueFrom: freezed == issueFrom
          ? _value.issueFrom
          : issueFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      issueTo: freezed == issueTo
          ? _value.issueTo
          : issueTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchParamsImplCopyWith<$Res>
    implements $SearchParamsCopyWith<$Res> {
  factory _$$SearchParamsImplCopyWith(
          _$SearchParamsImpl value, $Res Function(_$SearchParamsImpl) then) =
      __$$SearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) NameOfHouse nameOfHouse,
      @HiveField(1) String nameOfMeeting,
      @HiveField(2) String any,
      @HiveField(3) String speaker,
      @HiveField(4) DateTime? from,
      @HiveField(5) DateTime? until,
      @HiveField(6) bool supplementAndAppendix,
      @HiveField(7) bool contentsAndIndex,
      @HiveField(8) SearchRange searchRange,
      @HiveField(9) bool closing,
      @HiveField(10) int? speechNumber,
      @HiveField(11) String speakerPosition,
      @HiveField(12) String speakerGroup,
      @HiveField(13) SpeakerRole speakerRole,
      @HiveField(14) String speechID,
      @HiveField(15) String issueID,
      @HiveField(16) int? sessionFrom,
      @HiveField(17) int? sessionTo,
      @HiveField(18) int? issueFrom,
      @HiveField(19) int? issueTo});
}

/// @nodoc
class __$$SearchParamsImplCopyWithImpl<$Res>
    extends _$SearchParamsCopyWithImpl<$Res, _$SearchParamsImpl>
    implements _$$SearchParamsImplCopyWith<$Res> {
  __$$SearchParamsImplCopyWithImpl(
      _$SearchParamsImpl _value, $Res Function(_$SearchParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? any = null,
    Object? speaker = null,
    Object? from = freezed,
    Object? until = freezed,
    Object? supplementAndAppendix = null,
    Object? contentsAndIndex = null,
    Object? searchRange = null,
    Object? closing = null,
    Object? speechNumber = freezed,
    Object? speakerPosition = null,
    Object? speakerGroup = null,
    Object? speakerRole = null,
    Object? speechID = null,
    Object? issueID = null,
    Object? sessionFrom = freezed,
    Object? sessionTo = freezed,
    Object? issueFrom = freezed,
    Object? issueTo = freezed,
  }) {
    return _then(_$SearchParamsImpl(
      nameOfHouse: null == nameOfHouse
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as NameOfHouse,
      nameOfMeeting: null == nameOfMeeting
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      any: null == any
          ? _value.any
          : any // ignore: cast_nullable_to_non_nullable
              as String,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      until: freezed == until
          ? _value.until
          : until // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      supplementAndAppendix: null == supplementAndAppendix
          ? _value.supplementAndAppendix
          : supplementAndAppendix // ignore: cast_nullable_to_non_nullable
              as bool,
      contentsAndIndex: null == contentsAndIndex
          ? _value.contentsAndIndex
          : contentsAndIndex // ignore: cast_nullable_to_non_nullable
              as bool,
      searchRange: null == searchRange
          ? _value.searchRange
          : searchRange // ignore: cast_nullable_to_non_nullable
              as SearchRange,
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool,
      speechNumber: freezed == speechNumber
          ? _value.speechNumber
          : speechNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      speakerPosition: null == speakerPosition
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: null == speakerGroup
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: null == speakerRole
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as SpeakerRole,
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: null == issueID
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      sessionFrom: freezed == sessionFrom
          ? _value.sessionFrom
          : sessionFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionTo: freezed == sessionTo
          ? _value.sessionTo
          : sessionTo // ignore: cast_nullable_to_non_nullable
              as int?,
      issueFrom: freezed == issueFrom
          ? _value.issueFrom
          : issueFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      issueTo: freezed == issueTo
          ? _value.issueTo
          : issueTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchParamsImpl with DiagnosticableTreeMixin implements _SearchParams {
  const _$SearchParamsImpl(
      {@HiveField(0) this.nameOfHouse = NameOfHouse.none,
      @HiveField(1) this.nameOfMeeting = '',
      @HiveField(2) this.any = '',
      @HiveField(3) this.speaker = '',
      @HiveField(4) this.from,
      @HiveField(5) this.until,
      @HiveField(6) this.supplementAndAppendix = false,
      @HiveField(7) this.contentsAndIndex = false,
      @HiveField(8) this.searchRange = SearchRange.none,
      @HiveField(9) this.closing = false,
      @HiveField(10) this.speechNumber,
      @HiveField(11) this.speakerPosition = '',
      @HiveField(12) this.speakerGroup = '',
      @HiveField(13) this.speakerRole = SpeakerRole.none,
      @HiveField(14) this.speechID = '',
      @HiveField(15) this.issueID = '',
      @HiveField(16) this.sessionFrom,
      @HiveField(17) this.sessionTo,
      @HiveField(18) this.issueFrom,
      @HiveField(19) this.issueTo});

  factory _$SearchParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchParamsImplFromJson(json);

  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  @override
  @JsonKey()
  @HiveField(0)
  final NameOfHouse nameOfHouse;

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @JsonKey()
  @HiveField(1)
  final String nameOfMeeting;

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @JsonKey()
  @HiveField(2)
  final String any;

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @JsonKey()
  @HiveField(3)
  final String speaker;

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  @override
  @HiveField(4)
  final DateTime? from;

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  @override
  @HiveField(5)
  final DateTime? until;

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @override
  @JsonKey()
  @HiveField(6)
  final bool supplementAndAppendix;

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @override
  @JsonKey()
  @HiveField(7)
  final bool contentsAndIndex;

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  @override
  @JsonKey()
  @HiveField(8)
  final SearchRange searchRange;

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @override
  @JsonKey()
  @HiveField(9)
  final bool closing;

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  @override
  @HiveField(10)
  final int? speechNumber;

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @JsonKey()
  @HiveField(11)
  final String speakerPosition;

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @JsonKey()
  @HiveField(12)
  final String speakerGroup;

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  @override
  @JsonKey()
  @HiveField(13)
  final SpeakerRole speakerRole;

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @override
  @JsonKey()
  @HiveField(14)
  final String speechID;

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @override
  @JsonKey()
  @HiveField(15)
  final String issueID;

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @HiveField(16)
  final int? sessionFrom;

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @HiveField(17)
  final int? sessionTo;

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @HiveField(18)
  final int? issueFrom;

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @override
  @HiveField(19)
  final int? issueTo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchParams(nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, any: $any, speaker: $speaker, from: $from, until: $until, supplementAndAppendix: $supplementAndAppendix, contentsAndIndex: $contentsAndIndex, searchRange: $searchRange, closing: $closing, speechNumber: $speechNumber, speakerPosition: $speakerPosition, speakerGroup: $speakerGroup, speakerRole: $speakerRole, speechID: $speechID, issueID: $issueID, sessionFrom: $sessionFrom, sessionTo: $sessionTo, issueFrom: $issueFrom, issueTo: $issueTo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchParams'))
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchParamsImpl &&
            (identical(other.nameOfHouse, nameOfHouse) ||
                other.nameOfHouse == nameOfHouse) &&
            (identical(other.nameOfMeeting, nameOfMeeting) ||
                other.nameOfMeeting == nameOfMeeting) &&
            (identical(other.any, any) || other.any == any) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.until, until) || other.until == until) &&
            (identical(other.supplementAndAppendix, supplementAndAppendix) ||
                other.supplementAndAppendix == supplementAndAppendix) &&
            (identical(other.contentsAndIndex, contentsAndIndex) ||
                other.contentsAndIndex == contentsAndIndex) &&
            (identical(other.searchRange, searchRange) ||
                other.searchRange == searchRange) &&
            (identical(other.closing, closing) || other.closing == closing) &&
            (identical(other.speechNumber, speechNumber) ||
                other.speechNumber == speechNumber) &&
            (identical(other.speakerPosition, speakerPosition) ||
                other.speakerPosition == speakerPosition) &&
            (identical(other.speakerGroup, speakerGroup) ||
                other.speakerGroup == speakerGroup) &&
            (identical(other.speakerRole, speakerRole) ||
                other.speakerRole == speakerRole) &&
            (identical(other.speechID, speechID) ||
                other.speechID == speechID) &&
            (identical(other.issueID, issueID) || other.issueID == issueID) &&
            (identical(other.sessionFrom, sessionFrom) ||
                other.sessionFrom == sessionFrom) &&
            (identical(other.sessionTo, sessionTo) ||
                other.sessionTo == sessionTo) &&
            (identical(other.issueFrom, issueFrom) ||
                other.issueFrom == issueFrom) &&
            (identical(other.issueTo, issueTo) || other.issueTo == issueTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        nameOfHouse,
        nameOfMeeting,
        any,
        speaker,
        from,
        until,
        supplementAndAppendix,
        contentsAndIndex,
        searchRange,
        closing,
        speechNumber,
        speakerPosition,
        speakerGroup,
        speakerRole,
        speechID,
        issueID,
        sessionFrom,
        sessionTo,
        issueFrom,
        issueTo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
      __$$SearchParamsImplCopyWithImpl<_$SearchParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchParamsImplToJson(
      this,
    );
  }
}

abstract class _SearchParams implements SearchParams {
  const factory _SearchParams(
      {@HiveField(0) final NameOfHouse nameOfHouse,
      @HiveField(1) final String nameOfMeeting,
      @HiveField(2) final String any,
      @HiveField(3) final String speaker,
      @HiveField(4) final DateTime? from,
      @HiveField(5) final DateTime? until,
      @HiveField(6) final bool supplementAndAppendix,
      @HiveField(7) final bool contentsAndIndex,
      @HiveField(8) final SearchRange searchRange,
      @HiveField(9) final bool closing,
      @HiveField(10) final int? speechNumber,
      @HiveField(11) final String speakerPosition,
      @HiveField(12) final String speakerGroup,
      @HiveField(13) final SpeakerRole speakerRole,
      @HiveField(14) final String speechID,
      @HiveField(15) final String issueID,
      @HiveField(16) final int? sessionFrom,
      @HiveField(17) final int? sessionTo,
      @HiveField(18) final int? issueFrom,
      @HiveField(19) final int? issueTo}) = _$SearchParamsImpl;

  factory _SearchParams.fromJson(Map<String, dynamic> json) =
      _$SearchParamsImpl.fromJson;

  @override

  /// 院名
  /// 院名として「衆議院」「参議院」「両院」「両院協議会」のいずれかを指定可能。「両院」と「両院協議会」の結果は同じ。
  /// 省略可（省略時は検索条件に含めない）。また、指定可能な値以外を指定した場合も、検索条件に含めない。
  @HiveField(0)
  NameOfHouse get nameOfHouse;
  @override

  /// 会議名
  /// 本会議、委員会等の会議名（ひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(1)
  String get nameOfMeeting;
  @override

  /// 検索語
  /// 発言内容等に含まれる言葉を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のAND検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(2)
  String get any;
  @override

  /// 発言者名
  /// 発言者名（議員名はひらがな可）を指定可能。部分一致検索。半角スペース（U+0020）を区切り文字として複数指定した場合は、指定した語のOR検索となる。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(3)
  String get speaker;
  @override

  /// 開会日付／始点
  /// 検索対象とする会議の開催日の始点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「0000-01-01」が指定されたものとして検索する）。
  @HiveField(4)
  DateTime? get from;
  @override

  /// 開会日付／終点
  /// 検索対象とする会議の開催日の終点を「YYYY-MM-DD」の形式で指定可能。
  /// 省略可（省略時は「9999-12-31」が指定されたものとして検索する）。
  @HiveField(5)
  DateTime? get until;
  @override

  /// 追録・附録指定
  /// 検索対象を追録・附録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(6)
  bool get supplementAndAppendix;
  @override

  /// 目次・索引指定
  /// 検索対象を目次・索引に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(7)
  bool get contentsAndIndex;
  @override

  /// 議事冒頭・本文指定
  /// 検索語（パラメータ名：any）を指定して検索する際の検索対象箇所を「冒頭」「本文」「冒頭・本文」のいずれかで指定可能。
  /// 省略可（省略時は「冒頭・本文」が指定されたものとして検索する）。検索語を指定しなかった時は検索条件には含めない。
  @HiveField(8)
  SearchRange get searchRange;
  @override

  /// 閉会中指定
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  @HiveField(9)
  bool get closing;
  @override

  /// 発言番号
  /// 発言番号を0以上の整数（例：発言番号10の場合は「speechNumber=10」）で指定可能。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）
  @HiveField(10)
  int? get speechNumber;
  @override

  /// 発言者肩書き
  /// 発言者の肩書きを指定可能。部分一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(11)
  String get speakerPosition;
  @override

  /// 発言者所属会派
  /// 発言者の所属会派を指定可能。部分一致検索（なお、登録されているデータは正式名称のみ）。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(12)
  String get speakerGroup;
  @override

  /// 発言者役割
  /// 発言者の役割として「証人」「参考人」「公述人」のいずれかを指定可能。
  /// 省略可（省略時は検索条件に含めない）。指定可能な値以外を指定した場合はエラーになる。
  @HiveField(13)
  SpeakerRole get speakerRole;
  @override

  /// 発言ID
  /// 発言を一意に識別するIDとして、「会議録ID（パラメータ名：issueID。21桁の英数字）_発言番号（会議録テキスト表示画面で表示されている各発言に付されている、先頭に0を埋めて3桁にした数字。4桁の場合は4桁の数字）」の書式で指定可能（例：「100105254X00119470520_000」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @HiveField(14)
  String get speechID;
  @override

  /// 会議録ID
  /// 会議録（冊子）を一意に識別するIDとして、会議録テキスト表示画面の「会議録テキストURLを表示」リンクで表示される21桁の英数字で指定可能（例：「100105254X00119470520」）。完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。書式が適切でない場合にはエラーになる。
  @HiveField(15)
  String get issueID;
  @override

  /// 国会回次From
  /// 検索対象とする国会回次の始まり（開始回）を3桁までの自然数で指定可能。国会回次Toと組み合わせて指定した場合には範囲指定検索、国会回次From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(16)
  int? get sessionFrom;
  @override

  /// 国会回次To
  /// 検索対象とする国会回次の終わり（終了回）を3桁までの自然数で指定可能。国会回次Fromと組み合わせて指定した場合には範囲指定検索、国会回次To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(17)
  int? get sessionTo;
  @override

  /// 号数From
  /// 検索対象とする号数の始まり（開始号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Toと組み合わせて指定した場合には範囲指定検索、号数From単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(18)
  int? get issueFrom;
  @override

  /// 号数To
  /// 検索対象とする号数の終わり（終了号）を3桁までの整数で指定可能（目次・索引・附録・追録は0号扱い）。号数Fromと組み合わせて指定した場合には範囲指定検索、号数To単独で指定した場合は当該の回次のみを完全一致検索。
  /// 省略可（省略時は検索条件に含めない）。
  @HiveField(19)
  int? get issueTo;
  @override
  @JsonKey(ignore: true)
  _$$SearchParamsImplCopyWith<_$SearchParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
