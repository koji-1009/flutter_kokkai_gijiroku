// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'speech_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeechRecordResponse _$SpeechRecordResponseFromJson(Map<String, dynamic> json) {
  return _SpeechRecordResponsee.fromJson(json);
}

/// @nodoc
class _$SpeechRecordResponseTearOff {
  const _$SpeechRecordResponseTearOff();

  _SpeechRecordResponsee call(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<SpeechRecord> speechRecord = const []}) {
    return _SpeechRecordResponsee(
      numberOfRecords: numberOfRecords,
      numberOfReturn: numberOfReturn,
      startRecord: startRecord,
      nextRecordPosition: nextRecordPosition,
      speechRecord: speechRecord,
    );
  }

  SpeechRecordResponse fromJson(Map<String, Object?> json) {
    return SpeechRecordResponse.fromJson(json);
  }
}

/// @nodoc
const $SpeechRecordResponse = _$SpeechRecordResponseTearOff();

/// @nodoc
mixin _$SpeechRecordResponse {
  /// 総結果件数
  int get numberOfRecords => throw _privateConstructorUsedError;

  /// 返戻件数
  int get numberOfReturn => throw _privateConstructorUsedError;

  /// 開始位置
  int get startRecord => throw _privateConstructorUsedError;

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition => throw _privateConstructorUsedError;

  /// 発言リスト
  List<SpeechRecord> get speechRecord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeechRecordResponseCopyWith<SpeechRecordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechRecordResponseCopyWith<$Res> {
  factory $SpeechRecordResponseCopyWith(SpeechRecordResponse value,
          $Res Function(SpeechRecordResponse) then) =
      _$SpeechRecordResponseCopyWithImpl<$Res>;
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<SpeechRecord> speechRecord});
}

/// @nodoc
class _$SpeechRecordResponseCopyWithImpl<$Res>
    implements $SpeechRecordResponseCopyWith<$Res> {
  _$SpeechRecordResponseCopyWithImpl(this._value, this._then);

  final SpeechRecordResponse _value;
  // ignore: unused_field
  final $Res Function(SpeechRecordResponse) _then;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? speechRecord = freezed,
  }) {
    return _then(_value.copyWith(
      numberOfRecords: numberOfRecords == freezed
          ? _value.numberOfRecords
          : numberOfRecords // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReturn: numberOfReturn == freezed
          ? _value.numberOfReturn
          : numberOfReturn // ignore: cast_nullable_to_non_nullable
              as int,
      startRecord: startRecord == freezed
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      nextRecordPosition: nextRecordPosition == freezed
          ? _value.nextRecordPosition
          : nextRecordPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<SpeechRecord>,
    ));
  }
}

/// @nodoc
abstract class _$SpeechRecordResponseeCopyWith<$Res>
    implements $SpeechRecordResponseCopyWith<$Res> {
  factory _$SpeechRecordResponseeCopyWith(_SpeechRecordResponsee value,
          $Res Function(_SpeechRecordResponsee) then) =
      __$SpeechRecordResponseeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<SpeechRecord> speechRecord});
}

/// @nodoc
class __$SpeechRecordResponseeCopyWithImpl<$Res>
    extends _$SpeechRecordResponseCopyWithImpl<$Res>
    implements _$SpeechRecordResponseeCopyWith<$Res> {
  __$SpeechRecordResponseeCopyWithImpl(_SpeechRecordResponsee _value,
      $Res Function(_SpeechRecordResponsee) _then)
      : super(_value, (v) => _then(v as _SpeechRecordResponsee));

  @override
  _SpeechRecordResponsee get _value => super._value as _SpeechRecordResponsee;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? speechRecord = freezed,
  }) {
    return _then(_SpeechRecordResponsee(
      numberOfRecords: numberOfRecords == freezed
          ? _value.numberOfRecords
          : numberOfRecords // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReturn: numberOfReturn == freezed
          ? _value.numberOfReturn
          : numberOfReturn // ignore: cast_nullable_to_non_nullable
              as int,
      startRecord: startRecord == freezed
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      nextRecordPosition: nextRecordPosition == freezed
          ? _value.nextRecordPosition
          : nextRecordPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<SpeechRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeechRecordResponsee
    with DiagnosticableTreeMixin
    implements _SpeechRecordResponsee {
  const _$_SpeechRecordResponsee(
      {required this.numberOfRecords,
      required this.numberOfReturn,
      required this.startRecord,
      required this.nextRecordPosition,
      this.speechRecord = const []});

  factory _$_SpeechRecordResponsee.fromJson(Map<String, dynamic> json) =>
      _$$_SpeechRecordResponseeFromJson(json);

  @override

  /// 総結果件数
  final int numberOfRecords;
  @override

  /// 返戻件数
  final int numberOfReturn;
  @override

  /// 開始位置
  final int startRecord;
  @override

  /// 次開始位置（※存在する場合のみ）
  final int? nextRecordPosition;
  @JsonKey()
  @override

  /// 発言リスト
  final List<SpeechRecord> speechRecord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpeechRecordResponse(numberOfRecords: $numberOfRecords, numberOfReturn: $numberOfReturn, startRecord: $startRecord, nextRecordPosition: $nextRecordPosition, speechRecord: $speechRecord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpeechRecordResponse'))
      ..add(DiagnosticsProperty('numberOfRecords', numberOfRecords))
      ..add(DiagnosticsProperty('numberOfReturn', numberOfReturn))
      ..add(DiagnosticsProperty('startRecord', startRecord))
      ..add(DiagnosticsProperty('nextRecordPosition', nextRecordPosition))
      ..add(DiagnosticsProperty('speechRecord', speechRecord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpeechRecordResponsee &&
            const DeepCollectionEquality()
                .equals(other.numberOfRecords, numberOfRecords) &&
            const DeepCollectionEquality()
                .equals(other.numberOfReturn, numberOfReturn) &&
            const DeepCollectionEquality()
                .equals(other.startRecord, startRecord) &&
            const DeepCollectionEquality()
                .equals(other.nextRecordPosition, nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other.speechRecord, speechRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberOfRecords),
      const DeepCollectionEquality().hash(numberOfReturn),
      const DeepCollectionEquality().hash(startRecord),
      const DeepCollectionEquality().hash(nextRecordPosition),
      const DeepCollectionEquality().hash(speechRecord));

  @JsonKey(ignore: true)
  @override
  _$SpeechRecordResponseeCopyWith<_SpeechRecordResponsee> get copyWith =>
      __$SpeechRecordResponseeCopyWithImpl<_SpeechRecordResponsee>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeechRecordResponseeToJson(this);
  }
}

abstract class _SpeechRecordResponsee implements SpeechRecordResponse {
  const factory _SpeechRecordResponsee(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<SpeechRecord> speechRecord}) = _$_SpeechRecordResponsee;

  factory _SpeechRecordResponsee.fromJson(Map<String, dynamic> json) =
      _$_SpeechRecordResponsee.fromJson;

  @override

  /// 総結果件数
  int get numberOfRecords;
  @override

  /// 返戻件数
  int get numberOfReturn;
  @override

  /// 開始位置
  int get startRecord;
  @override

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition;
  @override

  /// 発言リスト
  List<SpeechRecord> get speechRecord;
  @override
  @JsonKey(ignore: true)
  _$SpeechRecordResponseeCopyWith<_SpeechRecordResponsee> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeechRecord _$SpeechRecordFromJson(Map<String, dynamic> json) {
  return _SpeechRecord.fromJson(json);
}

/// @nodoc
class _$SpeechRecordTearOff {
  const _$SpeechRecordTearOff();

  _SpeechRecord call(
      {required String speechID,
      required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      bool closing = false,
      required int speechOrder,
      required String speaker,
      String speakerYomi = '',
      String speakerGroup = '',
      String speakerPosition = '',
      String speakerRole = '',
      required String speech,
      required int startPage,
      required String speechURL,
      required String meetingURL,
      String pdfURL = ''}) {
    return _SpeechRecord(
      speechID: speechID,
      issueID: issueID,
      imageKind: imageKind,
      searchObject: searchObject,
      session: session,
      nameOfHouse: nameOfHouse,
      nameOfMeeting: nameOfMeeting,
      issue: issue,
      date: date,
      closing: closing,
      speechOrder: speechOrder,
      speaker: speaker,
      speakerYomi: speakerYomi,
      speakerGroup: speakerGroup,
      speakerPosition: speakerPosition,
      speakerRole: speakerRole,
      speech: speech,
      startPage: startPage,
      speechURL: speechURL,
      meetingURL: meetingURL,
      pdfURL: pdfURL,
    );
  }

  SpeechRecord fromJson(Map<String, Object?> json) {
    return SpeechRecord.fromJson(json);
  }
}

/// @nodoc
const $SpeechRecord = _$SpeechRecordTearOff();

/// @nodoc
mixin _$SpeechRecord {
  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;

  /// 会議録ID
  String get issueID => throw _privateConstructorUsedError;

  /// イメージ種別（会議録・目次・索引・附録・追録）
  String get imageKind => throw _privateConstructorUsedError;

  /// 検索対象箇所（議事冒頭・本文）
  int get searchObject => throw _privateConstructorUsedError;

  /// 国会回次
  int get session => throw _privateConstructorUsedError;

  /// 院名
  String get nameOfHouse => throw _privateConstructorUsedError;

  /// 会議名
  String get nameOfMeeting => throw _privateConstructorUsedError;

  /// 号数
  String get issue => throw _privateConstructorUsedError;

  /// 開催日付
  String get date => throw _privateConstructorUsedError;

  /// 閉会中フラグ
  bool get closing => throw _privateConstructorUsedError;

  /// 発言番号
  int get speechOrder => throw _privateConstructorUsedError;

  /// 発言者名
  String get speaker => throw _privateConstructorUsedError;

  /// 発言者よみ
  String get speakerYomi => throw _privateConstructorUsedError;

  /// 発言者所属会派
  String get speakerGroup => throw _privateConstructorUsedError;

  /// 発言者肩書き
  String get speakerPosition => throw _privateConstructorUsedError;

  /// 発言者役割
  String get speakerRole => throw _privateConstructorUsedError;

  /// 発言
  String get speech => throw _privateConstructorUsedError;

  /// 発言が掲載されている開始ページ
  int get startPage => throw _privateConstructorUsedError;

  /// 発言URL
  String get speechURL => throw _privateConstructorUsedError;

  /// 会議録テキスト表示画面のURL
  String get meetingURL => throw _privateConstructorUsedError;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeechRecordCopyWith<SpeechRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeechRecordCopyWith<$Res> {
  factory $SpeechRecordCopyWith(
          SpeechRecord value, $Res Function(SpeechRecord) then) =
      _$SpeechRecordCopyWithImpl<$Res>;
  $Res call(
      {String speechID,
      String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      bool closing,
      int speechOrder,
      String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      String speech,
      int startPage,
      String speechURL,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class _$SpeechRecordCopyWithImpl<$Res> implements $SpeechRecordCopyWith<$Res> {
  _$SpeechRecordCopyWithImpl(this._value, this._then);

  final SpeechRecord _value;
  // ignore: unused_field
  final $Res Function(SpeechRecord) _then;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speakerYomi = freezed,
    Object? speakerGroup = freezed,
    Object? speakerPosition = freezed,
    Object? speakerRole = freezed,
    Object? speech = freezed,
    Object? startPage = freezed,
    Object? speechURL = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_value.copyWith(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: issueID == freezed
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      imageKind: imageKind == freezed
          ? _value.imageKind
          : imageKind // ignore: cast_nullable_to_non_nullable
              as String,
      searchObject: searchObject == freezed
          ? _value.searchObject
          : searchObject // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfHouse: nameOfHouse == freezed
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as String,
      nameOfMeeting: nameOfMeeting == freezed
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speakerYomi: speakerYomi == freezed
          ? _value.speakerYomi
          : speakerYomi // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: speakerGroup == freezed
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerPosition: speakerPosition == freezed
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: speakerRole == freezed
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String,
      speech: speech == freezed
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      startPage: startPage == freezed
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      speechURL: speechURL == freezed
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
      meetingURL: meetingURL == freezed
          ? _value.meetingURL
          : meetingURL // ignore: cast_nullable_to_non_nullable
              as String,
      pdfURL: pdfURL == freezed
          ? _value.pdfURL
          : pdfURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SpeechRecordCopyWith<$Res>
    implements $SpeechRecordCopyWith<$Res> {
  factory _$SpeechRecordCopyWith(
          _SpeechRecord value, $Res Function(_SpeechRecord) then) =
      __$SpeechRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String speechID,
      String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      bool closing,
      int speechOrder,
      String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      String speech,
      int startPage,
      String speechURL,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class __$SpeechRecordCopyWithImpl<$Res> extends _$SpeechRecordCopyWithImpl<$Res>
    implements _$SpeechRecordCopyWith<$Res> {
  __$SpeechRecordCopyWithImpl(
      _SpeechRecord _value, $Res Function(_SpeechRecord) _then)
      : super(_value, (v) => _then(v as _SpeechRecord));

  @override
  _SpeechRecord get _value => super._value as _SpeechRecord;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speakerYomi = freezed,
    Object? speakerGroup = freezed,
    Object? speakerPosition = freezed,
    Object? speakerRole = freezed,
    Object? speech = freezed,
    Object? startPage = freezed,
    Object? speechURL = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_SpeechRecord(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: issueID == freezed
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      imageKind: imageKind == freezed
          ? _value.imageKind
          : imageKind // ignore: cast_nullable_to_non_nullable
              as String,
      searchObject: searchObject == freezed
          ? _value.searchObject
          : searchObject // ignore: cast_nullable_to_non_nullable
              as int,
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfHouse: nameOfHouse == freezed
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as String,
      nameOfMeeting: nameOfMeeting == freezed
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      closing: closing == freezed
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as bool,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speakerYomi: speakerYomi == freezed
          ? _value.speakerYomi
          : speakerYomi // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: speakerGroup == freezed
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerPosition: speakerPosition == freezed
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: speakerRole == freezed
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String,
      speech: speech == freezed
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      startPage: startPage == freezed
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      speechURL: speechURL == freezed
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
      meetingURL: meetingURL == freezed
          ? _value.meetingURL
          : meetingURL // ignore: cast_nullable_to_non_nullable
              as String,
      pdfURL: pdfURL == freezed
          ? _value.pdfURL
          : pdfURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeechRecord with DiagnosticableTreeMixin implements _SpeechRecord {
  const _$_SpeechRecord(
      {required this.speechID,
      required this.issueID,
      required this.imageKind,
      required this.searchObject,
      required this.session,
      required this.nameOfHouse,
      required this.nameOfMeeting,
      required this.issue,
      required this.date,
      this.closing = false,
      required this.speechOrder,
      required this.speaker,
      this.speakerYomi = '',
      this.speakerGroup = '',
      this.speakerPosition = '',
      this.speakerRole = '',
      required this.speech,
      required this.startPage,
      required this.speechURL,
      required this.meetingURL,
      this.pdfURL = ''});

  factory _$_SpeechRecord.fromJson(Map<String, dynamic> json) =>
      _$$_SpeechRecordFromJson(json);

  @override

  /// 発言ID
  final String speechID;
  @override

  /// 会議録ID
  final String issueID;
  @override

  /// イメージ種別（会議録・目次・索引・附録・追録）
  final String imageKind;
  @override

  /// 検索対象箇所（議事冒頭・本文）
  final int searchObject;
  @override

  /// 国会回次
  final int session;
  @override

  /// 院名
  final String nameOfHouse;
  @override

  /// 会議名
  final String nameOfMeeting;
  @override

  /// 号数
  final String issue;
  @override

  /// 開催日付
  final String date;
  @JsonKey()
  @override

  /// 閉会中フラグ
  final bool closing;
  @override

  /// 発言番号
  final int speechOrder;
  @override

  /// 発言者名
  final String speaker;
  @JsonKey()
  @override

  /// 発言者よみ
  final String speakerYomi;
  @JsonKey()
  @override

  /// 発言者所属会派
  final String speakerGroup;
  @JsonKey()
  @override

  /// 発言者肩書き
  final String speakerPosition;
  @JsonKey()
  @override

  /// 発言者役割
  final String speakerRole;
  @override

  /// 発言
  final String speech;
  @override

  /// 発言が掲載されている開始ページ
  final int startPage;
  @override

  /// 発言URL
  final String speechURL;
  @override

  /// 会議録テキスト表示画面のURL
  final String meetingURL;
  @JsonKey()
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  final String pdfURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpeechRecord(speechID: $speechID, issueID: $issueID, imageKind: $imageKind, searchObject: $searchObject, session: $session, nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, issue: $issue, date: $date, closing: $closing, speechOrder: $speechOrder, speaker: $speaker, speakerYomi: $speakerYomi, speakerGroup: $speakerGroup, speakerPosition: $speakerPosition, speakerRole: $speakerRole, speech: $speech, startPage: $startPage, speechURL: $speechURL, meetingURL: $meetingURL, pdfURL: $pdfURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SpeechRecord'))
      ..add(DiagnosticsProperty('speechID', speechID))
      ..add(DiagnosticsProperty('issueID', issueID))
      ..add(DiagnosticsProperty('imageKind', imageKind))
      ..add(DiagnosticsProperty('searchObject', searchObject))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('nameOfHouse', nameOfHouse))
      ..add(DiagnosticsProperty('nameOfMeeting', nameOfMeeting))
      ..add(DiagnosticsProperty('issue', issue))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('closing', closing))
      ..add(DiagnosticsProperty('speechOrder', speechOrder))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('speakerYomi', speakerYomi))
      ..add(DiagnosticsProperty('speakerGroup', speakerGroup))
      ..add(DiagnosticsProperty('speakerPosition', speakerPosition))
      ..add(DiagnosticsProperty('speakerRole', speakerRole))
      ..add(DiagnosticsProperty('speech', speech))
      ..add(DiagnosticsProperty('startPage', startPage))
      ..add(DiagnosticsProperty('speechURL', speechURL))
      ..add(DiagnosticsProperty('meetingURL', meetingURL))
      ..add(DiagnosticsProperty('pdfURL', pdfURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpeechRecord &&
            const DeepCollectionEquality().equals(other.speechID, speechID) &&
            const DeepCollectionEquality().equals(other.issueID, issueID) &&
            const DeepCollectionEquality().equals(other.imageKind, imageKind) &&
            const DeepCollectionEquality()
                .equals(other.searchObject, searchObject) &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality()
                .equals(other.nameOfHouse, nameOfHouse) &&
            const DeepCollectionEquality()
                .equals(other.nameOfMeeting, nameOfMeeting) &&
            const DeepCollectionEquality().equals(other.issue, issue) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.closing, closing) &&
            const DeepCollectionEquality()
                .equals(other.speechOrder, speechOrder) &&
            const DeepCollectionEquality().equals(other.speaker, speaker) &&
            const DeepCollectionEquality()
                .equals(other.speakerYomi, speakerYomi) &&
            const DeepCollectionEquality()
                .equals(other.speakerGroup, speakerGroup) &&
            const DeepCollectionEquality()
                .equals(other.speakerPosition, speakerPosition) &&
            const DeepCollectionEquality()
                .equals(other.speakerRole, speakerRole) &&
            const DeepCollectionEquality().equals(other.speech, speech) &&
            const DeepCollectionEquality().equals(other.startPage, startPage) &&
            const DeepCollectionEquality().equals(other.speechURL, speechURL) &&
            const DeepCollectionEquality()
                .equals(other.meetingURL, meetingURL) &&
            const DeepCollectionEquality().equals(other.pdfURL, pdfURL));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(speechID),
        const DeepCollectionEquality().hash(issueID),
        const DeepCollectionEquality().hash(imageKind),
        const DeepCollectionEquality().hash(searchObject),
        const DeepCollectionEquality().hash(session),
        const DeepCollectionEquality().hash(nameOfHouse),
        const DeepCollectionEquality().hash(nameOfMeeting),
        const DeepCollectionEquality().hash(issue),
        const DeepCollectionEquality().hash(date),
        const DeepCollectionEquality().hash(closing),
        const DeepCollectionEquality().hash(speechOrder),
        const DeepCollectionEquality().hash(speaker),
        const DeepCollectionEquality().hash(speakerYomi),
        const DeepCollectionEquality().hash(speakerGroup),
        const DeepCollectionEquality().hash(speakerPosition),
        const DeepCollectionEquality().hash(speakerRole),
        const DeepCollectionEquality().hash(speech),
        const DeepCollectionEquality().hash(startPage),
        const DeepCollectionEquality().hash(speechURL),
        const DeepCollectionEquality().hash(meetingURL),
        const DeepCollectionEquality().hash(pdfURL)
      ]);

  @JsonKey(ignore: true)
  @override
  _$SpeechRecordCopyWith<_SpeechRecord> get copyWith =>
      __$SpeechRecordCopyWithImpl<_SpeechRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeechRecordToJson(this);
  }
}

abstract class _SpeechRecord implements SpeechRecord {
  const factory _SpeechRecord(
      {required String speechID,
      required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      bool closing,
      required int speechOrder,
      required String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      required String speech,
      required int startPage,
      required String speechURL,
      required String meetingURL,
      String pdfURL}) = _$_SpeechRecord;

  factory _SpeechRecord.fromJson(Map<String, dynamic> json) =
      _$_SpeechRecord.fromJson;

  @override

  /// 発言ID
  String get speechID;
  @override

  /// 会議録ID
  String get issueID;
  @override

  /// イメージ種別（会議録・目次・索引・附録・追録）
  String get imageKind;
  @override

  /// 検索対象箇所（議事冒頭・本文）
  int get searchObject;
  @override

  /// 国会回次
  int get session;
  @override

  /// 院名
  String get nameOfHouse;
  @override

  /// 会議名
  String get nameOfMeeting;
  @override

  /// 号数
  String get issue;
  @override

  /// 開催日付
  String get date;
  @override

  /// 閉会中フラグ
  bool get closing;
  @override

  /// 発言番号
  int get speechOrder;
  @override

  /// 発言者名
  String get speaker;
  @override

  /// 発言者よみ
  String get speakerYomi;
  @override

  /// 発言者所属会派
  String get speakerGroup;
  @override

  /// 発言者肩書き
  String get speakerPosition;
  @override

  /// 発言者役割
  String get speakerRole;
  @override

  /// 発言
  String get speech;
  @override

  /// 発言が掲載されている開始ページ
  int get startPage;
  @override

  /// 発言URL
  String get speechURL;
  @override

  /// 会議録テキスト表示画面のURL
  String get meetingURL;
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL;
  @override
  @JsonKey(ignore: true)
  _$SpeechRecordCopyWith<_SpeechRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
