// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetingRecordDetailResponse _$MeetingRecordDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordResponseDetail.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordDetailResponse {
  /// 総結果件数
  int get numberOfRecords => throw _privateConstructorUsedError;

  /// 返戻件数
  int get numberOfReturn => throw _privateConstructorUsedError;

  /// 開始位置
  int get startRecord => throw _privateConstructorUsedError;

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition => throw _privateConstructorUsedError;

  /// 会議一覧
  List<MeetingRecordDetail> get meetingRecord =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordDetailResponseCopyWith<MeetingRecordDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordDetailResponseCopyWith<$Res> {
  factory $MeetingRecordDetailResponseCopyWith(
          MeetingRecordDetailResponse value,
          $Res Function(MeetingRecordDetailResponse) then) =
      _$MeetingRecordDetailResponseCopyWithImpl<$Res,
          MeetingRecordDetailResponse>;
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordDetail> meetingRecord});
}

/// @nodoc
class _$MeetingRecordDetailResponseCopyWithImpl<$Res,
        $Val extends MeetingRecordDetailResponse>
    implements $MeetingRecordDetailResponseCopyWith<$Res> {
  _$MeetingRecordDetailResponseCopyWithImpl(this._value, this._then);

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
    Object? meetingRecord = null,
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
      meetingRecord: null == meetingRecord
          ? _value.meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeetingRecordResponseDetailCopyWith<$Res>
    implements $MeetingRecordDetailResponseCopyWith<$Res> {
  factory _$$_MeetingRecordResponseDetailCopyWith(
          _$_MeetingRecordResponseDetail value,
          $Res Function(_$_MeetingRecordResponseDetail) then) =
      __$$_MeetingRecordResponseDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordDetail> meetingRecord});
}

/// @nodoc
class __$$_MeetingRecordResponseDetailCopyWithImpl<$Res>
    extends _$MeetingRecordDetailResponseCopyWithImpl<$Res,
        _$_MeetingRecordResponseDetail>
    implements _$$_MeetingRecordResponseDetailCopyWith<$Res> {
  __$$_MeetingRecordResponseDetailCopyWithImpl(
      _$_MeetingRecordResponseDetail _value,
      $Res Function(_$_MeetingRecordResponseDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRecords = null,
    Object? numberOfReturn = null,
    Object? startRecord = null,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = null,
  }) {
    return _then(_$_MeetingRecordResponseDetail(
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
      meetingRecord: null == meetingRecord
          ? _value._meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingRecordResponseDetail
    with DiagnosticableTreeMixin
    implements _MeetingRecordResponseDetail {
  const _$_MeetingRecordResponseDetail(
      {required this.numberOfRecords,
      required this.numberOfReturn,
      required this.startRecord,
      required this.nextRecordPosition,
      final List<MeetingRecordDetail> meetingRecord = const []})
      : _meetingRecord = meetingRecord;

  factory _$_MeetingRecordResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordResponseDetailFromJson(json);

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

  /// 会議一覧
  final List<MeetingRecordDetail> _meetingRecord;

  /// 会議一覧
  @override
  @JsonKey()
  List<MeetingRecordDetail> get meetingRecord {
    if (_meetingRecord is EqualUnmodifiableListView) return _meetingRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meetingRecord);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordDetailResponse(numberOfRecords: $numberOfRecords, numberOfReturn: $numberOfReturn, startRecord: $startRecord, nextRecordPosition: $nextRecordPosition, meetingRecord: $meetingRecord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordDetailResponse'))
      ..add(DiagnosticsProperty('numberOfRecords', numberOfRecords))
      ..add(DiagnosticsProperty('numberOfReturn', numberOfReturn))
      ..add(DiagnosticsProperty('startRecord', startRecord))
      ..add(DiagnosticsProperty('nextRecordPosition', nextRecordPosition))
      ..add(DiagnosticsProperty('meetingRecord', meetingRecord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordResponseDetail &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                other.numberOfRecords == numberOfRecords) &&
            (identical(other.numberOfReturn, numberOfReturn) ||
                other.numberOfReturn == numberOfReturn) &&
            (identical(other.startRecord, startRecord) ||
                other.startRecord == startRecord) &&
            (identical(other.nextRecordPosition, nextRecordPosition) ||
                other.nextRecordPosition == nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other._meetingRecord, _meetingRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberOfRecords,
      numberOfReturn,
      startRecord,
      nextRecordPosition,
      const DeepCollectionEquality().hash(_meetingRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordResponseDetailCopyWith<_$_MeetingRecordResponseDetail>
      get copyWith => __$$_MeetingRecordResponseDetailCopyWithImpl<
          _$_MeetingRecordResponseDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordResponseDetailToJson(
      this,
    );
  }
}

abstract class _MeetingRecordResponseDetail
    implements MeetingRecordDetailResponse {
  const factory _MeetingRecordResponseDetail(
          {required final int numberOfRecords,
          required final int numberOfReturn,
          required final int startRecord,
          required final int? nextRecordPosition,
          final List<MeetingRecordDetail> meetingRecord}) =
      _$_MeetingRecordResponseDetail;

  factory _MeetingRecordResponseDetail.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordResponseDetail.fromJson;

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

  /// 会議一覧
  List<MeetingRecordDetail> get meetingRecord;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordResponseDetailCopyWith<_$_MeetingRecordResponseDetail>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordDetail _$MeetingRecordDetailFromJson(Map<String, dynamic> json) {
  return _MeetingRecordDetail.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordDetail {
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

  /// 閉会中フラグ (null or 閉)
  String get closing => throw _privateConstructorUsedError;

  /// 発言リスト
  List<MeetingRecordDetailSpeech> get speechRecord =>
      throw _privateConstructorUsedError;

  /// 会議録テキスト表示画面のURL
  String get meetingURL => throw _privateConstructorUsedError;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordDetailCopyWith<MeetingRecordDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordDetailCopyWith<$Res> {
  factory $MeetingRecordDetailCopyWith(
          MeetingRecordDetail value, $Res Function(MeetingRecordDetail) then) =
      _$MeetingRecordDetailCopyWithImpl<$Res, MeetingRecordDetail>;
  @useResult
  $Res call(
      {String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      String closing,
      List<MeetingRecordDetailSpeech> speechRecord,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class _$MeetingRecordDetailCopyWithImpl<$Res, $Val extends MeetingRecordDetail>
    implements $MeetingRecordDetailCopyWith<$Res> {
  _$MeetingRecordDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? closing = null,
    Object? speechRecord = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_value.copyWith(
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
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String,
      speechRecord: null == speechRecord
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetailSpeech>,
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
abstract class _$$_MeetingRecordDetailCopyWith<$Res>
    implements $MeetingRecordDetailCopyWith<$Res> {
  factory _$$_MeetingRecordDetailCopyWith(_$_MeetingRecordDetail value,
          $Res Function(_$_MeetingRecordDetail) then) =
      __$$_MeetingRecordDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      String closing,
      List<MeetingRecordDetailSpeech> speechRecord,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class __$$_MeetingRecordDetailCopyWithImpl<$Res>
    extends _$MeetingRecordDetailCopyWithImpl<$Res, _$_MeetingRecordDetail>
    implements _$$_MeetingRecordDetailCopyWith<$Res> {
  __$$_MeetingRecordDetailCopyWithImpl(_$_MeetingRecordDetail _value,
      $Res Function(_$_MeetingRecordDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? closing = null,
    Object? speechRecord = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_$_MeetingRecordDetail(
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
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String,
      speechRecord: null == speechRecord
          ? _value._speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetailSpeech>,
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
class _$_MeetingRecordDetail
    with DiagnosticableTreeMixin
    implements _MeetingRecordDetail {
  const _$_MeetingRecordDetail(
      {required this.issueID,
      required this.imageKind,
      required this.searchObject,
      required this.session,
      required this.nameOfHouse,
      required this.nameOfMeeting,
      required this.issue,
      required this.date,
      this.closing = '',
      final List<MeetingRecordDetailSpeech> speechRecord = const [],
      required this.meetingURL,
      this.pdfURL = ''})
      : _speechRecord = speechRecord;

  factory _$_MeetingRecordDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordDetailFromJson(json);

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

  /// 閉会中フラグ (null or 閉)
  @override
  @JsonKey()
  final String closing;

  /// 発言リスト
  final List<MeetingRecordDetailSpeech> _speechRecord;

  /// 発言リスト
  @override
  @JsonKey()
  List<MeetingRecordDetailSpeech> get speechRecord {
    if (_speechRecord is EqualUnmodifiableListView) return _speechRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speechRecord);
  }

  /// 会議録テキスト表示画面のURL
  @override
  final String meetingURL;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  @override
  @JsonKey()
  final String pdfURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordDetail(issueID: $issueID, imageKind: $imageKind, searchObject: $searchObject, session: $session, nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, issue: $issue, date: $date, closing: $closing, speechRecord: $speechRecord, meetingURL: $meetingURL, pdfURL: $pdfURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordDetail'))
      ..add(DiagnosticsProperty('issueID', issueID))
      ..add(DiagnosticsProperty('imageKind', imageKind))
      ..add(DiagnosticsProperty('searchObject', searchObject))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('nameOfHouse', nameOfHouse))
      ..add(DiagnosticsProperty('nameOfMeeting', nameOfMeeting))
      ..add(DiagnosticsProperty('issue', issue))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('closing', closing))
      ..add(DiagnosticsProperty('speechRecord', speechRecord))
      ..add(DiagnosticsProperty('meetingURL', meetingURL))
      ..add(DiagnosticsProperty('pdfURL', pdfURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordDetail &&
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
            (identical(other.closing, closing) || other.closing == closing) &&
            const DeepCollectionEquality()
                .equals(other._speechRecord, _speechRecord) &&
            (identical(other.meetingURL, meetingURL) ||
                other.meetingURL == meetingURL) &&
            (identical(other.pdfURL, pdfURL) || other.pdfURL == pdfURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      issueID,
      imageKind,
      searchObject,
      session,
      nameOfHouse,
      nameOfMeeting,
      issue,
      date,
      closing,
      const DeepCollectionEquality().hash(_speechRecord),
      meetingURL,
      pdfURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordDetailCopyWith<_$_MeetingRecordDetail> get copyWith =>
      __$$_MeetingRecordDetailCopyWithImpl<_$_MeetingRecordDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordDetailToJson(
      this,
    );
  }
}

abstract class _MeetingRecordDetail implements MeetingRecordDetail {
  const factory _MeetingRecordDetail(
      {required final String issueID,
      required final String imageKind,
      required final int searchObject,
      required final int session,
      required final String nameOfHouse,
      required final String nameOfMeeting,
      required final String issue,
      required final String date,
      final String closing,
      final List<MeetingRecordDetailSpeech> speechRecord,
      required final String meetingURL,
      final String pdfURL}) = _$_MeetingRecordDetail;

  factory _MeetingRecordDetail.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordDetail.fromJson;

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

  /// 閉会中フラグ (null or 閉)
  String get closing;
  @override

  /// 発言リスト
  List<MeetingRecordDetailSpeech> get speechRecord;
  @override

  /// 会議録テキスト表示画面のURL
  String get meetingURL;
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordDetailCopyWith<_$_MeetingRecordDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingRecordDetailSpeech _$MeetingRecordDetailSpeechFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordDetailSpeech.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordDetailSpeech {
  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;

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

  /// レコード登録日時
  String get createTime => throw _privateConstructorUsedError;

  ///  レコード更新日時
  String get updateTime => throw _privateConstructorUsedError;

  /// 発言URL
  String get speechURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordDetailSpeechCopyWith<MeetingRecordDetailSpeech> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordDetailSpeechCopyWith<$Res> {
  factory $MeetingRecordDetailSpeechCopyWith(MeetingRecordDetailSpeech value,
          $Res Function(MeetingRecordDetailSpeech) then) =
      _$MeetingRecordDetailSpeechCopyWithImpl<$Res, MeetingRecordDetailSpeech>;
  @useResult
  $Res call(
      {String speechID,
      int speechOrder,
      String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      String speech,
      int startPage,
      String createTime,
      String updateTime,
      String speechURL});
}

/// @nodoc
class _$MeetingRecordDetailSpeechCopyWithImpl<$Res,
        $Val extends MeetingRecordDetailSpeech>
    implements $MeetingRecordDetailSpeechCopyWith<$Res> {
  _$MeetingRecordDetailSpeechCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speakerYomi = null,
    Object? speakerGroup = null,
    Object? speakerPosition = null,
    Object? speakerRole = null,
    Object? speech = null,
    Object? startPage = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? speechURL = null,
  }) {
    return _then(_value.copyWith(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
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
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeetingRecordDetailSpeechCopyWith<$Res>
    implements $MeetingRecordDetailSpeechCopyWith<$Res> {
  factory _$$_MeetingRecordDetailSpeechCopyWith(
          _$_MeetingRecordDetailSpeech value,
          $Res Function(_$_MeetingRecordDetailSpeech) then) =
      __$$_MeetingRecordDetailSpeechCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String speechID,
      int speechOrder,
      String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      String speech,
      int startPage,
      String createTime,
      String updateTime,
      String speechURL});
}

/// @nodoc
class __$$_MeetingRecordDetailSpeechCopyWithImpl<$Res>
    extends _$MeetingRecordDetailSpeechCopyWithImpl<$Res,
        _$_MeetingRecordDetailSpeech>
    implements _$$_MeetingRecordDetailSpeechCopyWith<$Res> {
  __$$_MeetingRecordDetailSpeechCopyWithImpl(
      _$_MeetingRecordDetailSpeech _value,
      $Res Function(_$_MeetingRecordDetailSpeech) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speakerYomi = null,
    Object? speakerGroup = null,
    Object? speakerPosition = null,
    Object? speakerRole = null,
    Object? speech = null,
    Object? startPage = null,
    Object? createTime = null,
    Object? updateTime = null,
    Object? speechURL = null,
  }) {
    return _then(_$_MeetingRecordDetailSpeech(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
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
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingRecordDetailSpeech
    with DiagnosticableTreeMixin
    implements _MeetingRecordDetailSpeech {
  const _$_MeetingRecordDetailSpeech(
      {required this.speechID,
      required this.speechOrder,
      required this.speaker,
      this.speakerYomi = '',
      this.speakerGroup = '',
      this.speakerPosition = '',
      this.speakerRole = '',
      required this.speech,
      required this.startPage,
      required this.createTime,
      required this.updateTime,
      required this.speechURL});

  factory _$_MeetingRecordDetailSpeech.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordDetailSpeechFromJson(json);

  /// 発言ID
  @override
  final String speechID;

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

  /// レコード登録日時
  @override
  final String createTime;

  ///  レコード更新日時
  @override
  final String updateTime;

  /// 発言URL
  @override
  final String speechURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordDetailSpeech(speechID: $speechID, speechOrder: $speechOrder, speaker: $speaker, speakerYomi: $speakerYomi, speakerGroup: $speakerGroup, speakerPosition: $speakerPosition, speakerRole: $speakerRole, speech: $speech, startPage: $startPage, createTime: $createTime, updateTime: $updateTime, speechURL: $speechURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordDetailSpeech'))
      ..add(DiagnosticsProperty('speechID', speechID))
      ..add(DiagnosticsProperty('speechOrder', speechOrder))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('speakerYomi', speakerYomi))
      ..add(DiagnosticsProperty('speakerGroup', speakerGroup))
      ..add(DiagnosticsProperty('speakerPosition', speakerPosition))
      ..add(DiagnosticsProperty('speakerRole', speakerRole))
      ..add(DiagnosticsProperty('speech', speech))
      ..add(DiagnosticsProperty('startPage', startPage))
      ..add(DiagnosticsProperty('createTime', createTime))
      ..add(DiagnosticsProperty('updateTime', updateTime))
      ..add(DiagnosticsProperty('speechURL', speechURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordDetailSpeech &&
            (identical(other.speechID, speechID) ||
                other.speechID == speechID) &&
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
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.speechURL, speechURL) ||
                other.speechURL == speechURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      speechID,
      speechOrder,
      speaker,
      speakerYomi,
      speakerGroup,
      speakerPosition,
      speakerRole,
      speech,
      startPage,
      createTime,
      updateTime,
      speechURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordDetailSpeechCopyWith<_$_MeetingRecordDetailSpeech>
      get copyWith => __$$_MeetingRecordDetailSpeechCopyWithImpl<
          _$_MeetingRecordDetailSpeech>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordDetailSpeechToJson(
      this,
    );
  }
}

abstract class _MeetingRecordDetailSpeech implements MeetingRecordDetailSpeech {
  const factory _MeetingRecordDetailSpeech(
      {required final String speechID,
      required final int speechOrder,
      required final String speaker,
      final String speakerYomi,
      final String speakerGroup,
      final String speakerPosition,
      final String speakerRole,
      required final String speech,
      required final int startPage,
      required final String createTime,
      required final String updateTime,
      required final String speechURL}) = _$_MeetingRecordDetailSpeech;

  factory _MeetingRecordDetailSpeech.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordDetailSpeech.fromJson;

  @override

  /// 発言ID
  String get speechID;
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

  /// レコード登録日時
  String get createTime;
  @override

  ///  レコード更新日時
  String get updateTime;
  @override

  /// 発言URL
  String get speechURL;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordDetailSpeechCopyWith<_$_MeetingRecordDetailSpeech>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordSummaryResponse _$MeetingRecordSummaryResponseFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordSummaryResponse {
  /// 総結果件数
  int get numberOfRecords => throw _privateConstructorUsedError;

  /// 返戻件数
  int get numberOfReturn => throw _privateConstructorUsedError;

  /// 開始位置
  int get startRecord => throw _privateConstructorUsedError;

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition => throw _privateConstructorUsedError;

  /// 会議一覧
  List<MeetingRecordSummary> get meetingRecord =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordSummaryResponseCopyWith<MeetingRecordSummaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordSummaryResponseCopyWith<$Res> {
  factory $MeetingRecordSummaryResponseCopyWith(
          MeetingRecordSummaryResponse value,
          $Res Function(MeetingRecordSummaryResponse) then) =
      _$MeetingRecordSummaryResponseCopyWithImpl<$Res,
          MeetingRecordSummaryResponse>;
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class _$MeetingRecordSummaryResponseCopyWithImpl<$Res,
        $Val extends MeetingRecordSummaryResponse>
    implements $MeetingRecordSummaryResponseCopyWith<$Res> {
  _$MeetingRecordSummaryResponseCopyWithImpl(this._value, this._then);

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
    Object? meetingRecord = null,
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
      meetingRecord: null == meetingRecord
          ? _value.meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeetingRecordSummaryResponseCopyWith<$Res>
    implements $MeetingRecordSummaryResponseCopyWith<$Res> {
  factory _$$_MeetingRecordSummaryResponseCopyWith(
          _$_MeetingRecordSummaryResponse value,
          $Res Function(_$_MeetingRecordSummaryResponse) then) =
      __$$_MeetingRecordSummaryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class __$$_MeetingRecordSummaryResponseCopyWithImpl<$Res>
    extends _$MeetingRecordSummaryResponseCopyWithImpl<$Res,
        _$_MeetingRecordSummaryResponse>
    implements _$$_MeetingRecordSummaryResponseCopyWith<$Res> {
  __$$_MeetingRecordSummaryResponseCopyWithImpl(
      _$_MeetingRecordSummaryResponse _value,
      $Res Function(_$_MeetingRecordSummaryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfRecords = null,
    Object? numberOfReturn = null,
    Object? startRecord = null,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = null,
  }) {
    return _then(_$_MeetingRecordSummaryResponse(
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
      meetingRecord: null == meetingRecord
          ? _value._meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingRecordSummaryResponse
    with DiagnosticableTreeMixin
    implements _MeetingRecordSummaryResponse {
  const _$_MeetingRecordSummaryResponse(
      {required this.numberOfRecords,
      required this.numberOfReturn,
      required this.startRecord,
      required this.nextRecordPosition,
      final List<MeetingRecordSummary> meetingRecord = const []})
      : _meetingRecord = meetingRecord;

  factory _$_MeetingRecordSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSummaryResponseFromJson(json);

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

  /// 会議一覧
  final List<MeetingRecordSummary> _meetingRecord;

  /// 会議一覧
  @override
  @JsonKey()
  List<MeetingRecordSummary> get meetingRecord {
    if (_meetingRecord is EqualUnmodifiableListView) return _meetingRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meetingRecord);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordSummaryResponse(numberOfRecords: $numberOfRecords, numberOfReturn: $numberOfReturn, startRecord: $startRecord, nextRecordPosition: $nextRecordPosition, meetingRecord: $meetingRecord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordSummaryResponse'))
      ..add(DiagnosticsProperty('numberOfRecords', numberOfRecords))
      ..add(DiagnosticsProperty('numberOfReturn', numberOfReturn))
      ..add(DiagnosticsProperty('startRecord', startRecord))
      ..add(DiagnosticsProperty('nextRecordPosition', nextRecordPosition))
      ..add(DiagnosticsProperty('meetingRecord', meetingRecord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordSummaryResponse &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                other.numberOfRecords == numberOfRecords) &&
            (identical(other.numberOfReturn, numberOfReturn) ||
                other.numberOfReturn == numberOfReturn) &&
            (identical(other.startRecord, startRecord) ||
                other.startRecord == startRecord) &&
            (identical(other.nextRecordPosition, nextRecordPosition) ||
                other.nextRecordPosition == nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other._meetingRecord, _meetingRecord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberOfRecords,
      numberOfReturn,
      startRecord,
      nextRecordPosition,
      const DeepCollectionEquality().hash(_meetingRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordSummaryResponseCopyWith<_$_MeetingRecordSummaryResponse>
      get copyWith => __$$_MeetingRecordSummaryResponseCopyWithImpl<
          _$_MeetingRecordSummaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummaryResponseToJson(
      this,
    );
  }
}

abstract class _MeetingRecordSummaryResponse
    implements MeetingRecordSummaryResponse {
  const factory _MeetingRecordSummaryResponse(
          {required final int numberOfRecords,
          required final int numberOfReturn,
          required final int startRecord,
          required final int? nextRecordPosition,
          final List<MeetingRecordSummary> meetingRecord}) =
      _$_MeetingRecordSummaryResponse;

  factory _MeetingRecordSummaryResponse.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordSummaryResponse.fromJson;

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

  /// 会議一覧
  List<MeetingRecordSummary> get meetingRecord;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordSummaryResponseCopyWith<_$_MeetingRecordSummaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordSummary _$MeetingRecordSummaryFromJson(Map<String, dynamic> json) {
  return _MeetingRecordSummary.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordSummary {
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

  /// 閉会中フラグ (null or 閉)
  String get closing => throw _privateConstructorUsedError;

  /// 発言リスト
  List<MeetingRecordSummarySpeech> get speechRecord =>
      throw _privateConstructorUsedError;

  /// 会議録テキスト表示画面のURL
  String get meetingURL => throw _privateConstructorUsedError;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordSummaryCopyWith<MeetingRecordSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordSummaryCopyWith<$Res> {
  factory $MeetingRecordSummaryCopyWith(MeetingRecordSummary value,
          $Res Function(MeetingRecordSummary) then) =
      _$MeetingRecordSummaryCopyWithImpl<$Res, MeetingRecordSummary>;
  @useResult
  $Res call(
      {String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      String closing,
      List<MeetingRecordSummarySpeech> speechRecord,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class _$MeetingRecordSummaryCopyWithImpl<$Res,
        $Val extends MeetingRecordSummary>
    implements $MeetingRecordSummaryCopyWith<$Res> {
  _$MeetingRecordSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? closing = null,
    Object? speechRecord = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_value.copyWith(
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
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String,
      speechRecord: null == speechRecord
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummarySpeech>,
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
abstract class _$$_MeetingRecordSummaryCopyWith<$Res>
    implements $MeetingRecordSummaryCopyWith<$Res> {
  factory _$$_MeetingRecordSummaryCopyWith(_$_MeetingRecordSummary value,
          $Res Function(_$_MeetingRecordSummary) then) =
      __$$_MeetingRecordSummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String issueID,
      String imageKind,
      int searchObject,
      int session,
      String nameOfHouse,
      String nameOfMeeting,
      String issue,
      String date,
      String closing,
      List<MeetingRecordSummarySpeech> speechRecord,
      String meetingURL,
      String pdfURL});
}

/// @nodoc
class __$$_MeetingRecordSummaryCopyWithImpl<$Res>
    extends _$MeetingRecordSummaryCopyWithImpl<$Res, _$_MeetingRecordSummary>
    implements _$$_MeetingRecordSummaryCopyWith<$Res> {
  __$$_MeetingRecordSummaryCopyWithImpl(_$_MeetingRecordSummary _value,
      $Res Function(_$_MeetingRecordSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issueID = null,
    Object? imageKind = null,
    Object? searchObject = null,
    Object? session = null,
    Object? nameOfHouse = null,
    Object? nameOfMeeting = null,
    Object? issue = null,
    Object? date = null,
    Object? closing = null,
    Object? speechRecord = null,
    Object? meetingURL = null,
    Object? pdfURL = null,
  }) {
    return _then(_$_MeetingRecordSummary(
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
      closing: null == closing
          ? _value.closing
          : closing // ignore: cast_nullable_to_non_nullable
              as String,
      speechRecord: null == speechRecord
          ? _value._speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummarySpeech>,
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
class _$_MeetingRecordSummary
    with DiagnosticableTreeMixin
    implements _MeetingRecordSummary {
  const _$_MeetingRecordSummary(
      {required this.issueID,
      required this.imageKind,
      required this.searchObject,
      required this.session,
      required this.nameOfHouse,
      required this.nameOfMeeting,
      required this.issue,
      required this.date,
      this.closing = '',
      final List<MeetingRecordSummarySpeech> speechRecord = const [],
      required this.meetingURL,
      this.pdfURL = ''})
      : _speechRecord = speechRecord;

  factory _$_MeetingRecordSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSummaryFromJson(json);

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

  /// 閉会中フラグ (null or 閉)
  @override
  @JsonKey()
  final String closing;

  /// 発言リスト
  final List<MeetingRecordSummarySpeech> _speechRecord;

  /// 発言リスト
  @override
  @JsonKey()
  List<MeetingRecordSummarySpeech> get speechRecord {
    if (_speechRecord is EqualUnmodifiableListView) return _speechRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speechRecord);
  }

  /// 会議録テキスト表示画面のURL
  @override
  final String meetingURL;

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  @override
  @JsonKey()
  final String pdfURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordSummary(issueID: $issueID, imageKind: $imageKind, searchObject: $searchObject, session: $session, nameOfHouse: $nameOfHouse, nameOfMeeting: $nameOfMeeting, issue: $issue, date: $date, closing: $closing, speechRecord: $speechRecord, meetingURL: $meetingURL, pdfURL: $pdfURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordSummary'))
      ..add(DiagnosticsProperty('issueID', issueID))
      ..add(DiagnosticsProperty('imageKind', imageKind))
      ..add(DiagnosticsProperty('searchObject', searchObject))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('nameOfHouse', nameOfHouse))
      ..add(DiagnosticsProperty('nameOfMeeting', nameOfMeeting))
      ..add(DiagnosticsProperty('issue', issue))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('closing', closing))
      ..add(DiagnosticsProperty('speechRecord', speechRecord))
      ..add(DiagnosticsProperty('meetingURL', meetingURL))
      ..add(DiagnosticsProperty('pdfURL', pdfURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordSummary &&
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
            (identical(other.closing, closing) || other.closing == closing) &&
            const DeepCollectionEquality()
                .equals(other._speechRecord, _speechRecord) &&
            (identical(other.meetingURL, meetingURL) ||
                other.meetingURL == meetingURL) &&
            (identical(other.pdfURL, pdfURL) || other.pdfURL == pdfURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      issueID,
      imageKind,
      searchObject,
      session,
      nameOfHouse,
      nameOfMeeting,
      issue,
      date,
      closing,
      const DeepCollectionEquality().hash(_speechRecord),
      meetingURL,
      pdfURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordSummaryCopyWith<_$_MeetingRecordSummary> get copyWith =>
      __$$_MeetingRecordSummaryCopyWithImpl<_$_MeetingRecordSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummaryToJson(
      this,
    );
  }
}

abstract class _MeetingRecordSummary implements MeetingRecordSummary {
  const factory _MeetingRecordSummary(
      {required final String issueID,
      required final String imageKind,
      required final int searchObject,
      required final int session,
      required final String nameOfHouse,
      required final String nameOfMeeting,
      required final String issue,
      required final String date,
      final String closing,
      final List<MeetingRecordSummarySpeech> speechRecord,
      required final String meetingURL,
      final String pdfURL}) = _$_MeetingRecordSummary;

  factory _MeetingRecordSummary.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordSummary.fromJson;

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

  /// 閉会中フラグ (null or 閉)
  String get closing;
  @override

  /// 発言リスト
  List<MeetingRecordSummarySpeech> get speechRecord;
  @override

  /// 会議録テキスト表示画面のURL
  String get meetingURL;
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
  String get pdfURL;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordSummaryCopyWith<_$_MeetingRecordSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingRecordSummarySpeech _$MeetingRecordSummarySpeechFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSummarySpeech.fromJson(json);
}

/// @nodoc
mixin _$MeetingRecordSummarySpeech {
  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;

  /// 発言番号
  int get speechOrder => throw _privateConstructorUsedError;

  /// 発言者名
  String get speaker => throw _privateConstructorUsedError;

  /// 発言URL
  String get speechURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordSummarySpeechCopyWith<MeetingRecordSummarySpeech>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordSummarySpeechCopyWith<$Res> {
  factory $MeetingRecordSummarySpeechCopyWith(MeetingRecordSummarySpeech value,
          $Res Function(MeetingRecordSummarySpeech) then) =
      _$MeetingRecordSummarySpeechCopyWithImpl<$Res,
          MeetingRecordSummarySpeech>;
  @useResult
  $Res call(
      {String speechID, int speechOrder, String speaker, String speechURL});
}

/// @nodoc
class _$MeetingRecordSummarySpeechCopyWithImpl<$Res,
        $Val extends MeetingRecordSummarySpeech>
    implements $MeetingRecordSummarySpeechCopyWith<$Res> {
  _$MeetingRecordSummarySpeechCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speechURL = null,
  }) {
    return _then(_value.copyWith(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: null == speechOrder
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeetingRecordSummarySpeechCopyWith<$Res>
    implements $MeetingRecordSummarySpeechCopyWith<$Res> {
  factory _$$_MeetingRecordSummarySpeechCopyWith(
          _$_MeetingRecordSummarySpeech value,
          $Res Function(_$_MeetingRecordSummarySpeech) then) =
      __$$_MeetingRecordSummarySpeechCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String speechID, int speechOrder, String speaker, String speechURL});
}

/// @nodoc
class __$$_MeetingRecordSummarySpeechCopyWithImpl<$Res>
    extends _$MeetingRecordSummarySpeechCopyWithImpl<$Res,
        _$_MeetingRecordSummarySpeech>
    implements _$$_MeetingRecordSummarySpeechCopyWith<$Res> {
  __$$_MeetingRecordSummarySpeechCopyWithImpl(
      _$_MeetingRecordSummarySpeech _value,
      $Res Function(_$_MeetingRecordSummarySpeech) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speechID = null,
    Object? speechOrder = null,
    Object? speaker = null,
    Object? speechURL = null,
  }) {
    return _then(_$_MeetingRecordSummarySpeech(
      speechID: null == speechID
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: null == speechOrder
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: null == speechURL
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeetingRecordSummarySpeech
    with DiagnosticableTreeMixin
    implements _MeetingRecordSummarySpeech {
  const _$_MeetingRecordSummarySpeech(
      {required this.speechID,
      required this.speechOrder,
      required this.speaker,
      required this.speechURL});

  factory _$_MeetingRecordSummarySpeech.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSummarySpeechFromJson(json);

  /// 発言ID
  @override
  final String speechID;

  /// 発言番号
  @override
  final int speechOrder;

  /// 発言者名
  @override
  final String speaker;

  /// 発言URL
  @override
  final String speechURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordSummarySpeech(speechID: $speechID, speechOrder: $speechOrder, speaker: $speaker, speechURL: $speechURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordSummarySpeech'))
      ..add(DiagnosticsProperty('speechID', speechID))
      ..add(DiagnosticsProperty('speechOrder', speechOrder))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('speechURL', speechURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeetingRecordSummarySpeech &&
            (identical(other.speechID, speechID) ||
                other.speechID == speechID) &&
            (identical(other.speechOrder, speechOrder) ||
                other.speechOrder == speechOrder) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.speechURL, speechURL) ||
                other.speechURL == speechURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, speechID, speechOrder, speaker, speechURL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeetingRecordSummarySpeechCopyWith<_$_MeetingRecordSummarySpeech>
      get copyWith => __$$_MeetingRecordSummarySpeechCopyWithImpl<
          _$_MeetingRecordSummarySpeech>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummarySpeechToJson(
      this,
    );
  }
}

abstract class _MeetingRecordSummarySpeech
    implements MeetingRecordSummarySpeech {
  const factory _MeetingRecordSummarySpeech(
      {required final String speechID,
      required final int speechOrder,
      required final String speaker,
      required final String speechURL}) = _$_MeetingRecordSummarySpeech;

  factory _MeetingRecordSummarySpeech.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordSummarySpeech.fromJson;

  @override

  /// 発言ID
  String get speechID;
  @override

  /// 発言番号
  int get speechOrder;
  @override

  /// 発言者名
  String get speaker;
  @override

  /// 発言URL
  String get speechURL;
  @override
  @JsonKey(ignore: true)
  _$$_MeetingRecordSummarySpeechCopyWith<_$_MeetingRecordSummarySpeech>
      get copyWith => throw _privateConstructorUsedError;
}
