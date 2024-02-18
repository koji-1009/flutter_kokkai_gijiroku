// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speech_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$SpeechRecordResponseCopyWithImpl<$Res, SpeechRecordResponse>;
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<SpeechRecord> speechRecord});
}

/// @nodoc
class _$SpeechRecordResponseCopyWithImpl<$Res,
        $Val extends SpeechRecordResponse>
    implements $SpeechRecordResponseCopyWith<$Res> {
  _$SpeechRecordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRecords = null,
    Object? numberOfReturn = null,
    Object? startRecord = null,
    Object? nextRecordPosition = freezed,
    Object? speechRecord = null,
  }) {
    return _then(_value.copyWith(
      numberOfRecords: null == numberOfRecords
          ? _value.numberOfRecords
          : numberOfRecords // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReturn: null == numberOfReturn
          ? _value.numberOfReturn
          : numberOfReturn // ignore: cast_nullable_to_non_nullable
              as int,
      startRecord: null == startRecord
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      nextRecordPosition: freezed == nextRecordPosition
          ? _value.nextRecordPosition
          : nextRecordPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      speechRecord: null == speechRecord
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<SpeechRecord>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeechRecordResponseeImplCopyWith<$Res>
    implements $SpeechRecordResponseCopyWith<$Res> {
  factory _$$SpeechRecordResponseeImplCopyWith(
          _$SpeechRecordResponseeImpl value,
          $Res Function(_$SpeechRecordResponseeImpl) then) =
      __$$SpeechRecordResponseeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<SpeechRecord> speechRecord});
}

/// @nodoc
class __$$SpeechRecordResponseeImplCopyWithImpl<$Res>
    extends _$SpeechRecordResponseCopyWithImpl<$Res,
        _$SpeechRecordResponseeImpl>
    implements _$$SpeechRecordResponseeImplCopyWith<$Res> {
  __$$SpeechRecordResponseeImplCopyWithImpl(_$SpeechRecordResponseeImpl _value,
      $Res Function(_$SpeechRecordResponseeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRecords = null,
    Object? numberOfReturn = null,
    Object? startRecord = null,
    Object? nextRecordPosition = freezed,
    Object? speechRecord = null,
  }) {
    return _then(_$SpeechRecordResponseeImpl(
      numberOfRecords: null == numberOfRecords
          ? _value.numberOfRecords
          : numberOfRecords // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfReturn: null == numberOfReturn
          ? _value.numberOfReturn
          : numberOfReturn // ignore: cast_nullable_to_non_nullable
              as int,
      startRecord: null == startRecord
          ? _value.startRecord
          : startRecord // ignore: cast_nullable_to_non_nullable
              as int,
      nextRecordPosition: freezed == nextRecordPosition
          ? _value.nextRecordPosition
          : nextRecordPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      speechRecord: null == speechRecord
          ? _value._speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<SpeechRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeechRecordResponseeImpl
    with DiagnosticableTreeMixin
    implements _SpeechRecordResponsee {
  const _$SpeechRecordResponseeImpl(
      {required this.numberOfRecords,
      required this.numberOfReturn,
      required this.startRecord,
      required this.nextRecordPosition,
      final List<SpeechRecord> speechRecord = const []})
      : _speechRecord = speechRecord;

  factory _$SpeechRecordResponseeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeechRecordResponseeImplFromJson(json);

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
    if (_speechRecord is EqualUnmodifiableListView) return _speechRecord;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechRecordResponseeImpl &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                other.numberOfRecords == numberOfRecords) &&
            (identical(other.numberOfReturn, numberOfReturn) ||
                other.numberOfReturn == numberOfReturn) &&
            (identical(other.startRecord, startRecord) ||
                other.startRecord == startRecord) &&
            (identical(other.nextRecordPosition, nextRecordPosition) ||
                other.nextRecordPosition == nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other._speechRecord, _speechRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberOfRecords,
      numberOfReturn,
      startRecord,
      nextRecordPosition,
      const DeepCollectionEquality().hash(_speechRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechRecordResponseeImplCopyWith<_$SpeechRecordResponseeImpl>
      get copyWith => __$$SpeechRecordResponseeImplCopyWithImpl<
          _$SpeechRecordResponseeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeechRecordResponseeImplToJson(
      this,
    );
  }
}

abstract class _SpeechRecordResponsee implements SpeechRecordResponse {
  const factory _SpeechRecordResponsee(
      {required final int numberOfRecords,
      required final int numberOfReturn,
      required final int startRecord,
      required final int? nextRecordPosition,
      final List<SpeechRecord> speechRecord}) = _$SpeechRecordResponseeImpl;

  factory _SpeechRecordResponsee.fromJson(Map<String, dynamic> json) =
      _$SpeechRecordResponseeImpl.fromJson;

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
  _$$SpeechRecordResponseeImplCopyWith<_$SpeechRecordResponseeImpl>
      get copyWith => throw _privateConstructorUsedError;
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
      _$SpeechRecordCopyWithImpl<$Res, SpeechRecord>;
  @useResult
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
class _$SpeechRecordCopyWithImpl<$Res, $Val extends SpeechRecord>
    implements $SpeechRecordCopyWith<$Res> {
  _$SpeechRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speakerYomi = null,
    Object? speakerGroup = null,
    Object? speakerPosition = null,
    Object? speakerRole = null,
    Object? speech = null,
    Object? startPage = null,
    Object? speechURL = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_value.copyWith(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: null == issueID
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      imageKind: null == imageKind
          ? _value.imageKind
          : imageKind // ignore: cast_nullable_to_non_nullable
              as String,
      searchObject: null == searchObject
          ? _value.searchObject
          : searchObject // ignore: cast_nullable_to_non_nullable
              as int,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfHouse: null == nameOfHouse
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as String,
      nameOfMeeting: null == nameOfMeeting
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: null == speechOrder
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speakerYomi: null == speakerYomi
          ? _value.speakerYomi
          : speakerYomi // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: null == speakerGroup
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerPosition: null == speakerPosition
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: null == speakerRole
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String,
      speech: null == speech
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
      meetingURL: null == meetingURL
          ? _value.meetingURL
          : meetingURL // ignore: cast_nullable_to_non_nullable
              as String,
      pdfURL: null == pdfURL
          ? _value.pdfURL
          : pdfURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeechRecordImplCopyWith<$Res>
    implements $SpeechRecordCopyWith<$Res> {
  factory _$$SpeechRecordImplCopyWith(
          _$SpeechRecordImpl value, $Res Function(_$SpeechRecordImpl) then) =
      __$$SpeechRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$SpeechRecordImplCopyWithImpl<$Res>
    extends _$SpeechRecordCopyWithImpl<$Res, _$SpeechRecordImpl>
    implements _$$SpeechRecordImplCopyWith<$Res> {
  __$$SpeechRecordImplCopyWithImpl(
      _$SpeechRecordImpl _value, $Res Function(_$SpeechRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speakerYomi = null,
    Object? speakerGroup = null,
    Object? speakerPosition = null,
    Object? speakerRole = null,
    Object? speech = null,
    Object? startPage = null,
    Object? speechURL = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_$SpeechRecordImpl(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      issueID: null == issueID
          ? _value.issueID
          : issueID // ignore: cast_nullable_to_non_nullable
              as String,
      imageKind: null == imageKind
          ? _value.imageKind
          : imageKind // ignore: cast_nullable_to_non_nullable
              as String,
      searchObject: null == searchObject
          ? _value.searchObject
          : searchObject // ignore: cast_nullable_to_non_nullable
              as int,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfHouse: null == nameOfHouse
          ? _value.nameOfHouse
          : nameOfHouse // ignore: cast_nullable_to_non_nullable
              as String,
      nameOfMeeting: null == nameOfMeeting
          ? _value.nameOfMeeting
          : nameOfMeeting // ignore: cast_nullable_to_non_nullable
              as String,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: null == speechOrder
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speakerYomi: null == speakerYomi
          ? _value.speakerYomi
          : speakerYomi // ignore: cast_nullable_to_non_nullable
              as String,
      speakerGroup: null == speakerGroup
          ? _value.speakerGroup
          : speakerGroup // ignore: cast_nullable_to_non_nullable
              as String,
      speakerPosition: null == speakerPosition
          ? _value.speakerPosition
          : speakerPosition // ignore: cast_nullable_to_non_nullable
              as String,
      speakerRole: null == speakerRole
          ? _value.speakerRole
          : speakerRole // ignore: cast_nullable_to_non_nullable
              as String,
      speech: null == speech
          ? _value.speech
          : speech // ignore: cast_nullable_to_non_nullable
              as String,
      startPage: null == startPage
          ? _value.startPage
          : startPage // ignore: cast_nullable_to_non_nullable
              as int,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
      meetingURL: null == meetingURL
          ? _value.meetingURL
          : meetingURL // ignore: cast_nullable_to_non_nullable
              as String,
      pdfURL: null == pdfURL
          ? _value.pdfURL
          : pdfURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeechRecordImpl with DiagnosticableTreeMixin implements _SpeechRecord {
  const _$SpeechRecordImpl(
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

  factory _$SpeechRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeechRecordImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeechRecordImpl &&
            (identical(other.speechID, speechID) ||
                other.speechID == speechID) &&
            (identical(other.issueID, issueID) || other.issueID == issueID) &&
            (identical(other.imageKind, imageKind) ||
                other.imageKind == imageKind) &&
            (identical(other.searchObject, searchObject) ||
                other.searchObject == searchObject) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.nameOfHouse, nameOfHouse) ||
                other.nameOfHouse == nameOfHouse) &&
            (identical(other.nameOfMeeting, nameOfMeeting) ||
                other.nameOfMeeting == nameOfMeeting) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.speechOrder, speechOrder) ||
                other.speechOrder == speechOrder) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.speakerYomi, speakerYomi) ||
                other.speakerYomi == speakerYomi) &&
            (identical(other.speakerGroup, speakerGroup) ||
                other.speakerGroup == speakerGroup) &&
            (identical(other.speakerPosition, speakerPosition) ||
                other.speakerPosition == speakerPosition) &&
            (identical(other.speakerRole, speakerRole) ||
                other.speakerRole == speakerRole) &&
            (identical(other.speech, speech) || other.speech == speech) &&
            (identical(other.startPage, startPage) ||
                other.startPage == startPage) &&
            (identical(other.speechURL, speechURL) ||
                other.speechURL == speechURL) &&
            (identical(other.meetingURL, meetingURL) ||
                other.meetingURL == meetingURL) &&
            (identical(other.pdfURL, pdfURL) || other.pdfURL == pdfURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        speechID,
        issueID,
        imageKind,
        searchObject,
        session,
        nameOfHouse,
        nameOfMeeting,
        issue,
        date,
        speechOrder,
        speaker,
        speakerYomi,
        speakerGroup,
        speakerPosition,
        speakerRole,
        speech,
        startPage,
        speechURL,
        meetingURL,
        pdfURL
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeechRecordImplCopyWith<_$SpeechRecordImpl> get copyWith =>
      __$$SpeechRecordImplCopyWithImpl<_$SpeechRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeechRecordImplToJson(
      this,
    );
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
      final String pdfURL}) = _$SpeechRecordImpl;

  factory _SpeechRecord.fromJson(Map<String, dynamic> json) =
      _$SpeechRecordImpl.fromJson;

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
  @override // 文字列で`閉`が返ってくることがあるため、一時的にコメントアウト
// /// 閉会中フラグ
// @Default(false) bool closing,
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
  _$$SpeechRecordImplCopyWith<_$SpeechRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
