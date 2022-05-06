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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeechRecordResponse _$SpeechRecordResponseFromJson(Map<String, dynamic> json) {
  return _SpeechRecordResponsee.fromJson(json);
}

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
abstract class _$$_SpeechRecordResponseeCopyWith<$Res>
    implements $SpeechRecordResponseCopyWith<$Res> {
  factory _$$_SpeechRecordResponseeCopyWith(_$_SpeechRecordResponsee value,
          $Res Function(_$_SpeechRecordResponsee) then) =
      __$$_SpeechRecordResponseeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<SpeechRecord> speechRecord});
}

/// @nodoc
class __$$_SpeechRecordResponseeCopyWithImpl<$Res>
    extends _$SpeechRecordResponseCopyWithImpl<$Res>
    implements _$$_SpeechRecordResponseeCopyWith<$Res> {
  __$$_SpeechRecordResponseeCopyWithImpl(_$_SpeechRecordResponsee _value,
      $Res Function(_$_SpeechRecordResponsee) _then)
      : super(_value, (v) => _then(v as _$_SpeechRecordResponsee));

  @override
  _$_SpeechRecordResponsee get _value =>
      super._value as _$_SpeechRecordResponsee;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? speechRecord = freezed,
  }) {
    return _then(_$_SpeechRecordResponsee(
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
          ? _value._speechRecord
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
      final List<SpeechRecord> speechRecord = const []})
      : _speechRecord = speechRecord;

  factory _$_SpeechRecordResponsee.fromJson(Map<String, dynamic> json) =>
      _$$_SpeechRecordResponseeFromJson(json);

  /// 総結果件数
  @override
  final int numberOfRecords;

  /// 返戻件数
  @override
  final int numberOfReturn;

  /// 開始位置
  @override
  final int startRecord;

  /// 次開始位置（※存在する場合のみ）
  @override
  final int? nextRecordPosition;

  /// 発言リスト
  final List<SpeechRecord> _speechRecord;

  /// 発言リスト
  @override
  @JsonKey()
  List<SpeechRecord> get speechRecord {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speechRecord);
  }

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
            other is _$_SpeechRecordResponsee &&
            const DeepCollectionEquality()
                .equals(other.numberOfRecords, numberOfRecords) &&
            const DeepCollectionEquality()
                .equals(other.numberOfReturn, numberOfReturn) &&
            const DeepCollectionEquality()
                .equals(other.startRecord, startRecord) &&
            const DeepCollectionEquality()
                .equals(other.nextRecordPosition, nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other._speechRecord, _speechRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberOfRecords),
      const DeepCollectionEquality().hash(numberOfReturn),
      const DeepCollectionEquality().hash(startRecord),
      const DeepCollectionEquality().hash(nextRecordPosition),
      const DeepCollectionEquality().hash(_speechRecord));

  @JsonKey(ignore: true)
  @override
  _$$_SpeechRecordResponseeCopyWith<_$_SpeechRecordResponsee> get copyWith =>
      __$$_SpeechRecordResponseeCopyWithImpl<_$_SpeechRecordResponsee>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeechRecordResponseeToJson(this);
  }
}

abstract class _SpeechRecordResponsee implements SpeechRecordResponse {
  const factory _SpeechRecordResponsee(
      {required final int numberOfRecords,
      required final int numberOfReturn,
      required final int startRecord,
      required final int? nextRecordPosition,
      final List<SpeechRecord> speechRecord}) = _$_SpeechRecordResponsee;

  factory _SpeechRecordResponsee.fromJson(Map<String, dynamic> json) =
      _$_SpeechRecordResponsee.fromJson;

  @override

  /// 総結果件数
  int get numberOfRecords => throw _privateConstructorUsedError;
  @override

  /// 返戻件数
  int get numberOfReturn => throw _privateConstructorUsedError;
  @override

  /// 開始位置
  int get startRecord => throw _privateConstructorUsedError;
  @override

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition => throw _privateConstructorUsedError;
  @override

  /// 発言リスト
  List<SpeechRecord> get speechRecord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpeechRecordResponseeCopyWith<_$_SpeechRecordResponsee> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeechRecord _$SpeechRecordFromJson(Map<String, dynamic> json) {
  return _SpeechRecord.fromJson(json);
}

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
  String get date =>
      throw _privateConstructorUsedError; // 文字列で`閉`が返ってくることがあるため、一時的にコメントアウト
// /// 閉会中フラグ
// @Default(false) bool closing,
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
abstract class _$$_SpeechRecordCopyWith<$Res>
    implements $SpeechRecordCopyWith<$Res> {
  factory _$$_SpeechRecordCopyWith(
          _$_SpeechRecord value, $Res Function(_$_SpeechRecord) then) =
      __$$_SpeechRecordCopyWithImpl<$Res>;
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
class __$$_SpeechRecordCopyWithImpl<$Res>
    extends _$SpeechRecordCopyWithImpl<$Res>
    implements _$$_SpeechRecordCopyWith<$Res> {
  __$$_SpeechRecordCopyWithImpl(
      _$_SpeechRecord _value, $Res Function(_$_SpeechRecord) _then)
      : super(_value, (v) => _then(v as _$_SpeechRecord));

  @override
  _$_SpeechRecord get _value => super._value as _$_SpeechRecord;

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
    return _then(_$_SpeechRecord(
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

  /// 発言ID
  @override
  final String speechID;

  /// 会議録ID
  @override
  final String issueID;

  /// イメージ種別（会議録・目次・索引・附録・追録）
  @override
  final String imageKind;

  /// 検索対象箇所（議事冒頭・本文）
  @override
  final int searchObject;

  /// 国会回次
  @override
  final int session;

  /// 院名
  @override
  final String nameOfHouse;

  /// 会議名
  @override
  final String nameOfMeeting;

  /// 号数
  @override
  final String issue;

  /// 開催日付
  @override
  final String date;
// 文字列で`閉`が返ってくることがあるため、一時的にコメントアウト
// /// 閉会中フラグ
// @Default(false) bool closing,
  /// 発言番号
  @override
  final int speechOrder;

  /// 発言者名
  @override
  final String speaker;

  /// 発言者よみ
  @override
  @JsonKey()
  final String speakerYomi;

  /// 発言者所属会派
  @override
  @JsonKey()
  final String speakerGroup;

  /// 発言者肩書き
  @override
  @JsonKey()
  final String speakerPosition;

  /// 発言者役割
  @override
  @JsonKey()
  final String speakerRole;

  /// 発言
  @override
  final String speech;

  /// 発言が掲載されている開始ページ
  @override
  final int startPage;

  /// 発言URL
  @override
  final String speechURL;

  /// 会議録テキスト表示画面のURL
  @override
  final String meetingURL;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  @override
  @JsonKey()
  final String pdfURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SpeechRecord(speechID: $speechID, issueID: $issueID, imageKind: $imageKind, searchObject: $searchObject, session: $session, nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, issue: $issue, date: $date, speechOrder: $speechOrder, speaker: $speaker, speakerYomi: $speakerYomi, speakerGroup: $speakerGroup, speakerPosition: $speakerPosition, speakerRole: $speakerRole, speech: $speech, startPage: $startPage, speechURL: $speechURL, meetingURL: $meetingURL, pdfURL: $pdfURL)';
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
            other is _$_SpeechRecord &&
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

  @JsonKey(ignore: true)
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
  _$$_SpeechRecordCopyWith<_$_SpeechRecord> get copyWith =>
      __$$_SpeechRecordCopyWithImpl<_$_SpeechRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeechRecordToJson(this);
  }
}

abstract class _SpeechRecord implements SpeechRecord {
  const factory _SpeechRecord(
      {required final String speechID,
      required final String issueID,
      required final String imageKind,
      required final int searchObject,
      required final int session,
      required final String nameOfHouse,
      required final String nameOfMeeting,
      required final String issue,
      required final String date,
      required final int speechOrder,
      required final String speaker,
      final String speakerYomi,
      final String speakerGroup,
      final String speakerPosition,
      final String speakerRole,
      required final String speech,
      required final int startPage,
      required final String speechURL,
      required final String meetingURL,
      final String pdfURL}) = _$_SpeechRecord;

  factory _SpeechRecord.fromJson(Map<String, dynamic> json) =
      _$_SpeechRecord.fromJson;

  @override

  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;
  @override

  /// 会議録ID
  String get issueID => throw _privateConstructorUsedError;
  @override

  /// イメージ種別（会議録・目次・索引・附録・追録）
  String get imageKind => throw _privateConstructorUsedError;
  @override

  /// 検索対象箇所（議事冒頭・本文）
  int get searchObject => throw _privateConstructorUsedError;
  @override

  /// 国会回次
  int get session => throw _privateConstructorUsedError;
  @override

  /// 院名
  String get nameOfHouse => throw _privateConstructorUsedError;
  @override

  /// 会議名
  String get nameOfMeeting => throw _privateConstructorUsedError;
  @override

  /// 号数
  String get issue => throw _privateConstructorUsedError;
  @override

  /// 開催日付
  String get date => throw _privateConstructorUsedError;
  @override // 文字列で`閉`が返ってくることがあるため、一時的にコメントアウト
// /// 閉会中フラグ
// @Default(false) bool closing,
  /// 発言番号
  int get speechOrder => throw _privateConstructorUsedError;
  @override

  /// 発言者名
  String get speaker => throw _privateConstructorUsedError;
  @override

  /// 発言者よみ
  String get speakerYomi => throw _privateConstructorUsedError;
  @override

  /// 発言者所属会派
  String get speakerGroup => throw _privateConstructorUsedError;
  @override

  /// 発言者肩書き
  String get speakerPosition => throw _privateConstructorUsedError;
  @override

  /// 発言者役割
  String get speakerRole => throw _privateConstructorUsedError;
  @override

  /// 発言
  String get speech => throw _privateConstructorUsedError;
  @override

  /// 発言が掲載されている開始ページ
  int get startPage => throw _privateConstructorUsedError;
  @override

  /// 発言URL
  String get speechURL => throw _privateConstructorUsedError;
  @override

  /// 会議録テキスト表示画面のURL
  String get meetingURL => throw _privateConstructorUsedError;
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpeechRecordCopyWith<_$_SpeechRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
