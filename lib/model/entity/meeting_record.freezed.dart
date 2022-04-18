// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meeting_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeetingRecordDetailResponse _$MeetingRecordDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordResponseDetail.fromJson(json);
}

/// @nodoc
class _$MeetingRecordDetailResponseTearOff {
  const _$MeetingRecordDetailResponseTearOff();

  _MeetingRecordResponseDetail call(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<MeetingRecordDetail> meetingRecord = const []}) {
    return _MeetingRecordResponseDetail(
      numberOfRecords: numberOfRecords,
      numberOfReturn: numberOfReturn,
      startRecord: startRecord,
      nextRecordPosition: nextRecordPosition,
      meetingRecord: meetingRecord,
    );
  }

  MeetingRecordDetailResponse fromJson(Map<String, Object?> json) {
    return MeetingRecordDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordDetailResponse = _$MeetingRecordDetailResponseTearOff();

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
      _$MeetingRecordDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordDetail> meetingRecord});
}

/// @nodoc
class _$MeetingRecordDetailResponseCopyWithImpl<$Res>
    implements $MeetingRecordDetailResponseCopyWith<$Res> {
  _$MeetingRecordDetailResponseCopyWithImpl(this._value, this._then);

  final MeetingRecordDetailResponse _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordDetailResponse) _then;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = freezed,
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
      meetingRecord: meetingRecord == freezed
          ? _value.meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetail>,
    ));
  }
}

/// @nodoc
abstract class _$MeetingRecordResponseDetailCopyWith<$Res>
    implements $MeetingRecordDetailResponseCopyWith<$Res> {
  factory _$MeetingRecordResponseDetailCopyWith(
          _MeetingRecordResponseDetail value,
          $Res Function(_MeetingRecordResponseDetail) then) =
      __$MeetingRecordResponseDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordDetail> meetingRecord});
}

/// @nodoc
class __$MeetingRecordResponseDetailCopyWithImpl<$Res>
    extends _$MeetingRecordDetailResponseCopyWithImpl<$Res>
    implements _$MeetingRecordResponseDetailCopyWith<$Res> {
  __$MeetingRecordResponseDetailCopyWithImpl(
      _MeetingRecordResponseDetail _value,
      $Res Function(_MeetingRecordResponseDetail) _then)
      : super(_value, (v) => _then(v as _MeetingRecordResponseDetail));

  @override
  _MeetingRecordResponseDetail get _value =>
      super._value as _MeetingRecordResponseDetail;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = freezed,
  }) {
    return _then(_MeetingRecordResponseDetail(
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
      meetingRecord: meetingRecord == freezed
          ? _value.meetingRecord
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
      this.meetingRecord = const []});

  factory _$_MeetingRecordResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordResponseDetailFromJson(json);

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

  /// 会議一覧
  final List<MeetingRecordDetail> meetingRecord;

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
            other is _MeetingRecordResponseDetail &&
            const DeepCollectionEquality()
                .equals(other.numberOfRecords, numberOfRecords) &&
            const DeepCollectionEquality()
                .equals(other.numberOfReturn, numberOfReturn) &&
            const DeepCollectionEquality()
                .equals(other.startRecord, startRecord) &&
            const DeepCollectionEquality()
                .equals(other.nextRecordPosition, nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other.meetingRecord, meetingRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberOfRecords),
      const DeepCollectionEquality().hash(numberOfReturn),
      const DeepCollectionEquality().hash(startRecord),
      const DeepCollectionEquality().hash(nextRecordPosition),
      const DeepCollectionEquality().hash(meetingRecord));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordResponseDetailCopyWith<_MeetingRecordResponseDetail>
      get copyWith => __$MeetingRecordResponseDetailCopyWithImpl<
          _MeetingRecordResponseDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordResponseDetailToJson(this);
  }
}

abstract class _MeetingRecordResponseDetail
    implements MeetingRecordDetailResponse {
  const factory _MeetingRecordResponseDetail(
          {required int numberOfRecords,
          required int numberOfReturn,
          required int startRecord,
          required int? nextRecordPosition,
          List<MeetingRecordDetail> meetingRecord}) =
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
  _$MeetingRecordResponseDetailCopyWith<_MeetingRecordResponseDetail>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordDetail _$MeetingRecordDetailFromJson(Map<String, dynamic> json) {
  return _MeetingRecordDetail.fromJson(json);
}

/// @nodoc
class _$MeetingRecordDetailTearOff {
  const _$MeetingRecordDetailTearOff();

  _MeetingRecordDetail call(
      {required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      String closing = '',
      List<MeetingRecordDetailSpeech> speechRecord = const [],
      required String meetingURL,
      String pdfURL = ''}) {
    return _MeetingRecordDetail(
      issueID: issueID,
      imageKind: imageKind,
      searchObject: searchObject,
      session: session,
      nameOfHouse: nameOfHouse,
      nameOfMeeting: nameOfMeeting,
      issue: issue,
      date: date,
      closing: closing,
      speechRecord: speechRecord,
      meetingURL: meetingURL,
      pdfURL: pdfURL,
    );
  }

  MeetingRecordDetail fromJson(Map<String, Object?> json) {
    return MeetingRecordDetail.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordDetail = _$MeetingRecordDetailTearOff();

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
      _$MeetingRecordDetailCopyWithImpl<$Res>;
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
class _$MeetingRecordDetailCopyWithImpl<$Res>
    implements $MeetingRecordDetailCopyWith<$Res> {
  _$MeetingRecordDetailCopyWithImpl(this._value, this._then);

  final MeetingRecordDetail _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordDetail) _then;

  @override
  $Res call({
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechRecord = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_value.copyWith(
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
              as String,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetailSpeech>,
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
abstract class _$MeetingRecordDetailCopyWith<$Res>
    implements $MeetingRecordDetailCopyWith<$Res> {
  factory _$MeetingRecordDetailCopyWith(_MeetingRecordDetail value,
          $Res Function(_MeetingRecordDetail) then) =
      __$MeetingRecordDetailCopyWithImpl<$Res>;
  @override
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
class __$MeetingRecordDetailCopyWithImpl<$Res>
    extends _$MeetingRecordDetailCopyWithImpl<$Res>
    implements _$MeetingRecordDetailCopyWith<$Res> {
  __$MeetingRecordDetailCopyWithImpl(
      _MeetingRecordDetail _value, $Res Function(_MeetingRecordDetail) _then)
      : super(_value, (v) => _then(v as _MeetingRecordDetail));

  @override
  _MeetingRecordDetail get _value => super._value as _MeetingRecordDetail;

  @override
  $Res call({
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechRecord = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_MeetingRecordDetail(
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
              as String,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordDetailSpeech>,
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
      this.speechRecord = const [],
      required this.meetingURL,
      this.pdfURL = ''});

  factory _$_MeetingRecordDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordDetailFromJson(json);

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

  /// 閉会中フラグ (null or 閉)
  final String closing;
  @JsonKey()
  @override

  /// 発言リスト
  final List<MeetingRecordDetailSpeech> speechRecord;
  @override

  /// 会議録テキスト表示画面のURL
  final String meetingURL;
  @JsonKey()
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
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
            other is _MeetingRecordDetail &&
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
                .equals(other.speechRecord, speechRecord) &&
            const DeepCollectionEquality()
                .equals(other.meetingURL, meetingURL) &&
            const DeepCollectionEquality().equals(other.pdfURL, pdfURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(issueID),
      const DeepCollectionEquality().hash(imageKind),
      const DeepCollectionEquality().hash(searchObject),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(nameOfHouse),
      const DeepCollectionEquality().hash(nameOfMeeting),
      const DeepCollectionEquality().hash(issue),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(closing),
      const DeepCollectionEquality().hash(speechRecord),
      const DeepCollectionEquality().hash(meetingURL),
      const DeepCollectionEquality().hash(pdfURL));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordDetailCopyWith<_MeetingRecordDetail> get copyWith =>
      __$MeetingRecordDetailCopyWithImpl<_MeetingRecordDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordDetailToJson(this);
  }
}

abstract class _MeetingRecordDetail implements MeetingRecordDetail {
  const factory _MeetingRecordDetail(
      {required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      String closing,
      List<MeetingRecordDetailSpeech> speechRecord,
      required String meetingURL,
      String pdfURL}) = _$_MeetingRecordDetail;

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
  _$MeetingRecordDetailCopyWith<_MeetingRecordDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingRecordDetailSpeech _$MeetingRecordDetailSpeechFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordDetailSpeech.fromJson(json);
}

/// @nodoc
class _$MeetingRecordDetailSpeechTearOff {
  const _$MeetingRecordDetailSpeechTearOff();

  _MeetingRecordDetailSpeech call(
      {required String speechID,
      required int speechOrder,
      required String speaker,
      String speakerYomi = '',
      String speakerGroup = '',
      String speakerPosition = '',
      String speakerRole = '',
      required String speech,
      required int startPage,
      required String createTime,
      required String updateTime,
      required String speechURL}) {
    return _MeetingRecordDetailSpeech(
      speechID: speechID,
      speechOrder: speechOrder,
      speaker: speaker,
      speakerYomi: speakerYomi,
      speakerGroup: speakerGroup,
      speakerPosition: speakerPosition,
      speakerRole: speakerRole,
      speech: speech,
      startPage: startPage,
      createTime: createTime,
      updateTime: updateTime,
      speechURL: speechURL,
    );
  }

  MeetingRecordDetailSpeech fromJson(Map<String, Object?> json) {
    return MeetingRecordDetailSpeech.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordDetailSpeech = _$MeetingRecordDetailSpeechTearOff();

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
      _$MeetingRecordDetailSpeechCopyWithImpl<$Res>;
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
class _$MeetingRecordDetailSpeechCopyWithImpl<$Res>
    implements $MeetingRecordDetailSpeechCopyWith<$Res> {
  _$MeetingRecordDetailSpeechCopyWithImpl(this._value, this._then);

  final MeetingRecordDetailSpeech _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordDetailSpeech) _then;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speakerYomi = freezed,
    Object? speakerGroup = freezed,
    Object? speakerPosition = freezed,
    Object? speakerRole = freezed,
    Object? speech = freezed,
    Object? startPage = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? speechURL = freezed,
  }) {
    return _then(_value.copyWith(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
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
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: speechURL == freezed
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MeetingRecordDetailSpeechCopyWith<$Res>
    implements $MeetingRecordDetailSpeechCopyWith<$Res> {
  factory _$MeetingRecordDetailSpeechCopyWith(_MeetingRecordDetailSpeech value,
          $Res Function(_MeetingRecordDetailSpeech) then) =
      __$MeetingRecordDetailSpeechCopyWithImpl<$Res>;
  @override
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
class __$MeetingRecordDetailSpeechCopyWithImpl<$Res>
    extends _$MeetingRecordDetailSpeechCopyWithImpl<$Res>
    implements _$MeetingRecordDetailSpeechCopyWith<$Res> {
  __$MeetingRecordDetailSpeechCopyWithImpl(_MeetingRecordDetailSpeech _value,
      $Res Function(_MeetingRecordDetailSpeech) _then)
      : super(_value, (v) => _then(v as _MeetingRecordDetailSpeech));

  @override
  _MeetingRecordDetailSpeech get _value =>
      super._value as _MeetingRecordDetailSpeech;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speakerYomi = freezed,
    Object? speakerGroup = freezed,
    Object? speakerPosition = freezed,
    Object? speakerRole = freezed,
    Object? speech = freezed,
    Object? startPage = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? speechURL = freezed,
  }) {
    return _then(_MeetingRecordDetailSpeech(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
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
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: updateTime == freezed
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: speechURL == freezed
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

  @override

  /// 発言ID
  final String speechID;
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

  /// レコード登録日時
  final String createTime;
  @override

  ///  レコード更新日時
  final String updateTime;
  @override

  /// 発言URL
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
            other is _MeetingRecordDetailSpeech &&
            const DeepCollectionEquality().equals(other.speechID, speechID) &&
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
            const DeepCollectionEquality()
                .equals(other.createTime, createTime) &&
            const DeepCollectionEquality()
                .equals(other.updateTime, updateTime) &&
            const DeepCollectionEquality().equals(other.speechURL, speechURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speechID),
      const DeepCollectionEquality().hash(speechOrder),
      const DeepCollectionEquality().hash(speaker),
      const DeepCollectionEquality().hash(speakerYomi),
      const DeepCollectionEquality().hash(speakerGroup),
      const DeepCollectionEquality().hash(speakerPosition),
      const DeepCollectionEquality().hash(speakerRole),
      const DeepCollectionEquality().hash(speech),
      const DeepCollectionEquality().hash(startPage),
      const DeepCollectionEquality().hash(createTime),
      const DeepCollectionEquality().hash(updateTime),
      const DeepCollectionEquality().hash(speechURL));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordDetailSpeechCopyWith<_MeetingRecordDetailSpeech>
      get copyWith =>
          __$MeetingRecordDetailSpeechCopyWithImpl<_MeetingRecordDetailSpeech>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordDetailSpeechToJson(this);
  }
}

abstract class _MeetingRecordDetailSpeech implements MeetingRecordDetailSpeech {
  const factory _MeetingRecordDetailSpeech(
      {required String speechID,
      required int speechOrder,
      required String speaker,
      String speakerYomi,
      String speakerGroup,
      String speakerPosition,
      String speakerRole,
      required String speech,
      required int startPage,
      required String createTime,
      required String updateTime,
      required String speechURL}) = _$_MeetingRecordDetailSpeech;

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
  _$MeetingRecordDetailSpeechCopyWith<_MeetingRecordDetailSpeech>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordSummaryResponse _$MeetingRecordSummaryResponseFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSummaryResponse.fromJson(json);
}

/// @nodoc
class _$MeetingRecordSummaryResponseTearOff {
  const _$MeetingRecordSummaryResponseTearOff();

  _MeetingRecordSummaryResponse call(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord = const []}) {
    return _MeetingRecordSummaryResponse(
      numberOfRecords: numberOfRecords,
      numberOfReturn: numberOfReturn,
      startRecord: startRecord,
      nextRecordPosition: nextRecordPosition,
      meetingRecord: meetingRecord,
    );
  }

  MeetingRecordSummaryResponse fromJson(Map<String, Object?> json) {
    return MeetingRecordSummaryResponse.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordSummaryResponse = _$MeetingRecordSummaryResponseTearOff();

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
      _$MeetingRecordSummaryResponseCopyWithImpl<$Res>;
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class _$MeetingRecordSummaryResponseCopyWithImpl<$Res>
    implements $MeetingRecordSummaryResponseCopyWith<$Res> {
  _$MeetingRecordSummaryResponseCopyWithImpl(this._value, this._then);

  final MeetingRecordSummaryResponse _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordSummaryResponse) _then;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = freezed,
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
      meetingRecord: meetingRecord == freezed
          ? _value.meetingRecord
          : meetingRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummary>,
    ));
  }
}

/// @nodoc
abstract class _$MeetingRecordSummaryResponseCopyWith<$Res>
    implements $MeetingRecordSummaryResponseCopyWith<$Res> {
  factory _$MeetingRecordSummaryResponseCopyWith(
          _MeetingRecordSummaryResponse value,
          $Res Function(_MeetingRecordSummaryResponse) then) =
      __$MeetingRecordSummaryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class __$MeetingRecordSummaryResponseCopyWithImpl<$Res>
    extends _$MeetingRecordSummaryResponseCopyWithImpl<$Res>
    implements _$MeetingRecordSummaryResponseCopyWith<$Res> {
  __$MeetingRecordSummaryResponseCopyWithImpl(
      _MeetingRecordSummaryResponse _value,
      $Res Function(_MeetingRecordSummaryResponse) _then)
      : super(_value, (v) => _then(v as _MeetingRecordSummaryResponse));

  @override
  _MeetingRecordSummaryResponse get _value =>
      super._value as _MeetingRecordSummaryResponse;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = freezed,
  }) {
    return _then(_MeetingRecordSummaryResponse(
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
      meetingRecord: meetingRecord == freezed
          ? _value.meetingRecord
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
      this.meetingRecord = const []});

  factory _$_MeetingRecordSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSummaryResponseFromJson(json);

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

  /// 会議一覧
  final List<MeetingRecordSummary> meetingRecord;

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
            other is _MeetingRecordSummaryResponse &&
            const DeepCollectionEquality()
                .equals(other.numberOfRecords, numberOfRecords) &&
            const DeepCollectionEquality()
                .equals(other.numberOfReturn, numberOfReturn) &&
            const DeepCollectionEquality()
                .equals(other.startRecord, startRecord) &&
            const DeepCollectionEquality()
                .equals(other.nextRecordPosition, nextRecordPosition) &&
            const DeepCollectionEquality()
                .equals(other.meetingRecord, meetingRecord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(numberOfRecords),
      const DeepCollectionEquality().hash(numberOfReturn),
      const DeepCollectionEquality().hash(startRecord),
      const DeepCollectionEquality().hash(nextRecordPosition),
      const DeepCollectionEquality().hash(meetingRecord));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordSummaryResponseCopyWith<_MeetingRecordSummaryResponse>
      get copyWith => __$MeetingRecordSummaryResponseCopyWithImpl<
          _MeetingRecordSummaryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummaryResponseToJson(this);
  }
}

abstract class _MeetingRecordSummaryResponse
    implements MeetingRecordSummaryResponse {
  const factory _MeetingRecordSummaryResponse(
          {required int numberOfRecords,
          required int numberOfReturn,
          required int startRecord,
          required int? nextRecordPosition,
          List<MeetingRecordSummary> meetingRecord}) =
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
  _$MeetingRecordSummaryResponseCopyWith<_MeetingRecordSummaryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordSummary _$MeetingRecordSummaryFromJson(Map<String, dynamic> json) {
  return _MeetingRecordSummary.fromJson(json);
}

/// @nodoc
class _$MeetingRecordSummaryTearOff {
  const _$MeetingRecordSummaryTearOff();

  _MeetingRecordSummary call(
      {required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      String closing = '',
      List<MeetingRecordSummarySpeech> speechRecord = const [],
      required String meetingURL,
      String pdfURL = ''}) {
    return _MeetingRecordSummary(
      issueID: issueID,
      imageKind: imageKind,
      searchObject: searchObject,
      session: session,
      nameOfHouse: nameOfHouse,
      nameOfMeeting: nameOfMeeting,
      issue: issue,
      date: date,
      closing: closing,
      speechRecord: speechRecord,
      meetingURL: meetingURL,
      pdfURL: pdfURL,
    );
  }

  MeetingRecordSummary fromJson(Map<String, Object?> json) {
    return MeetingRecordSummary.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordSummary = _$MeetingRecordSummaryTearOff();

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
      _$MeetingRecordSummaryCopyWithImpl<$Res>;
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
class _$MeetingRecordSummaryCopyWithImpl<$Res>
    implements $MeetingRecordSummaryCopyWith<$Res> {
  _$MeetingRecordSummaryCopyWithImpl(this._value, this._then);

  final MeetingRecordSummary _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordSummary) _then;

  @override
  $Res call({
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechRecord = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_value.copyWith(
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
              as String,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummarySpeech>,
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
abstract class _$MeetingRecordSummaryCopyWith<$Res>
    implements $MeetingRecordSummaryCopyWith<$Res> {
  factory _$MeetingRecordSummaryCopyWith(_MeetingRecordSummary value,
          $Res Function(_MeetingRecordSummary) then) =
      __$MeetingRecordSummaryCopyWithImpl<$Res>;
  @override
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
class __$MeetingRecordSummaryCopyWithImpl<$Res>
    extends _$MeetingRecordSummaryCopyWithImpl<$Res>
    implements _$MeetingRecordSummaryCopyWith<$Res> {
  __$MeetingRecordSummaryCopyWithImpl(
      _MeetingRecordSummary _value, $Res Function(_MeetingRecordSummary) _then)
      : super(_value, (v) => _then(v as _MeetingRecordSummary));

  @override
  _MeetingRecordSummary get _value => super._value as _MeetingRecordSummary;

  @override
  $Res call({
    Object? issueID = freezed,
    Object? imageKind = freezed,
    Object? searchObject = freezed,
    Object? session = freezed,
    Object? nameOfHouse = freezed,
    Object? nameOfMeeting = freezed,
    Object? issue = freezed,
    Object? date = freezed,
    Object? closing = freezed,
    Object? speechRecord = freezed,
    Object? meetingURL = freezed,
    Object? pdfURL = freezed,
  }) {
    return _then(_MeetingRecordSummary(
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
              as String,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSummarySpeech>,
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
      this.speechRecord = const [],
      required this.meetingURL,
      this.pdfURL = ''});

  factory _$_MeetingRecordSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSummaryFromJson(json);

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

  /// 閉会中フラグ (null or 閉)
  final String closing;
  @JsonKey()
  @override

  /// 発言リスト
  final List<MeetingRecordSummarySpeech> speechRecord;
  @override

  /// 会議録テキスト表示画面のURL
  final String meetingURL;
  @JsonKey()
  @override

  /// 会議録PDF表示画面のURL（※存在する場合のみ）
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
            other is _MeetingRecordSummary &&
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
                .equals(other.speechRecord, speechRecord) &&
            const DeepCollectionEquality()
                .equals(other.meetingURL, meetingURL) &&
            const DeepCollectionEquality().equals(other.pdfURL, pdfURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(issueID),
      const DeepCollectionEquality().hash(imageKind),
      const DeepCollectionEquality().hash(searchObject),
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(nameOfHouse),
      const DeepCollectionEquality().hash(nameOfMeeting),
      const DeepCollectionEquality().hash(issue),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(closing),
      const DeepCollectionEquality().hash(speechRecord),
      const DeepCollectionEquality().hash(meetingURL),
      const DeepCollectionEquality().hash(pdfURL));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordSummaryCopyWith<_MeetingRecordSummary> get copyWith =>
      __$MeetingRecordSummaryCopyWithImpl<_MeetingRecordSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummaryToJson(this);
  }
}

abstract class _MeetingRecordSummary implements MeetingRecordSummary {
  const factory _MeetingRecordSummary(
      {required String issueID,
      required String imageKind,
      required int searchObject,
      required int session,
      required String nameOfHouse,
      required String nameOfMeeting,
      required String issue,
      required String date,
      String closing,
      List<MeetingRecordSummarySpeech> speechRecord,
      required String meetingURL,
      String pdfURL}) = _$_MeetingRecordSummary;

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
  _$MeetingRecordSummaryCopyWith<_MeetingRecordSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetingRecordSummarySpeech _$MeetingRecordSummarySpeechFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSummarySpeech.fromJson(json);
}

/// @nodoc
class _$MeetingRecordSummarySpeechTearOff {
  const _$MeetingRecordSummarySpeechTearOff();

  _MeetingRecordSummarySpeech call(
      {required String speechID,
      required int speechOrder,
      required String speaker,
      required String speechURL}) {
    return _MeetingRecordSummarySpeech(
      speechID: speechID,
      speechOrder: speechOrder,
      speaker: speaker,
      speechURL: speechURL,
    );
  }

  MeetingRecordSummarySpeech fromJson(Map<String, Object?> json) {
    return MeetingRecordSummarySpeech.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordSummarySpeech = _$MeetingRecordSummarySpeechTearOff();

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
      _$MeetingRecordSummarySpeechCopyWithImpl<$Res>;
  $Res call(
      {String speechID, int speechOrder, String speaker, String speechURL});
}

/// @nodoc
class _$MeetingRecordSummarySpeechCopyWithImpl<$Res>
    implements $MeetingRecordSummarySpeechCopyWith<$Res> {
  _$MeetingRecordSummarySpeechCopyWithImpl(this._value, this._then);

  final MeetingRecordSummarySpeech _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordSummarySpeech) _then;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speechURL = freezed,
  }) {
    return _then(_value.copyWith(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: speechURL == freezed
          ? _value.speechURL
          : speechURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MeetingRecordSummarySpeechCopyWith<$Res>
    implements $MeetingRecordSummarySpeechCopyWith<$Res> {
  factory _$MeetingRecordSummarySpeechCopyWith(
          _MeetingRecordSummarySpeech value,
          $Res Function(_MeetingRecordSummarySpeech) then) =
      __$MeetingRecordSummarySpeechCopyWithImpl<$Res>;
  @override
  $Res call(
      {String speechID, int speechOrder, String speaker, String speechURL});
}

/// @nodoc
class __$MeetingRecordSummarySpeechCopyWithImpl<$Res>
    extends _$MeetingRecordSummarySpeechCopyWithImpl<$Res>
    implements _$MeetingRecordSummarySpeechCopyWith<$Res> {
  __$MeetingRecordSummarySpeechCopyWithImpl(_MeetingRecordSummarySpeech _value,
      $Res Function(_MeetingRecordSummarySpeech) _then)
      : super(_value, (v) => _then(v as _MeetingRecordSummarySpeech));

  @override
  _MeetingRecordSummarySpeech get _value =>
      super._value as _MeetingRecordSummarySpeech;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speechURL = freezed,
  }) {
    return _then(_MeetingRecordSummarySpeech(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as int,
      speaker: speaker == freezed
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as String,
      speechURL: speechURL == freezed
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

  @override

  /// 発言ID
  final String speechID;
  @override

  /// 発言番号
  final int speechOrder;
  @override

  /// 発言者名
  final String speaker;
  @override

  /// 発言URL
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
            other is _MeetingRecordSummarySpeech &&
            const DeepCollectionEquality().equals(other.speechID, speechID) &&
            const DeepCollectionEquality()
                .equals(other.speechOrder, speechOrder) &&
            const DeepCollectionEquality().equals(other.speaker, speaker) &&
            const DeepCollectionEquality().equals(other.speechURL, speechURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speechID),
      const DeepCollectionEquality().hash(speechOrder),
      const DeepCollectionEquality().hash(speaker),
      const DeepCollectionEquality().hash(speechURL));

  @JsonKey(ignore: true)
  @override
  _$MeetingRecordSummarySpeechCopyWith<_MeetingRecordSummarySpeech>
      get copyWith => __$MeetingRecordSummarySpeechCopyWithImpl<
          _MeetingRecordSummarySpeech>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSummarySpeechToJson(this);
  }
}

abstract class _MeetingRecordSummarySpeech
    implements MeetingRecordSummarySpeech {
  const factory _MeetingRecordSummarySpeech(
      {required String speechID,
      required int speechOrder,
      required String speaker,
      required String speechURL}) = _$_MeetingRecordSummarySpeech;

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
  _$MeetingRecordSummarySpeechCopyWith<_MeetingRecordSummarySpeech>
      get copyWith => throw _privateConstructorUsedError;
}
