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

MeetingRecordResponseDetail _$MeetingRecordResponseDetailFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordResponseDetail.fromJson(json);
}

/// @nodoc
class _$MeetingRecordResponseDetailTearOff {
  const _$MeetingRecordResponseDetailTearOff();

  _MeetingRecordResponseDetail call(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<MeetingRecordResponseDetail> meetingRecord = const []}) {
    return _MeetingRecordResponseDetail(
      numberOfRecords: numberOfRecords,
      numberOfReturn: numberOfReturn,
      startRecord: startRecord,
      nextRecordPosition: nextRecordPosition,
      meetingRecord: meetingRecord,
    );
  }

  MeetingRecordResponseDetail fromJson(Map<String, Object?> json) {
    return MeetingRecordResponseDetail.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordResponseDetail = _$MeetingRecordResponseDetailTearOff();

/// @nodoc
mixin _$MeetingRecordResponseDetail {
  /// 総結果件数
  int get numberOfRecords => throw _privateConstructorUsedError;

  /// 返戻件数
  int get numberOfReturn => throw _privateConstructorUsedError;

  /// 開始位置
  int get startRecord => throw _privateConstructorUsedError;

  /// 次開始位置（※存在する場合のみ）
  int? get nextRecordPosition => throw _privateConstructorUsedError;

  /// 会議一覧
  List<MeetingRecordResponseDetail> get meetingRecord =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordResponseDetailCopyWith<MeetingRecordResponseDetail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordResponseDetailCopyWith<$Res> {
  factory $MeetingRecordResponseDetailCopyWith(
          MeetingRecordResponseDetail value,
          $Res Function(MeetingRecordResponseDetail) then) =
      _$MeetingRecordResponseDetailCopyWithImpl<$Res>;
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordResponseDetail> meetingRecord});
}

/// @nodoc
class _$MeetingRecordResponseDetailCopyWithImpl<$Res>
    implements $MeetingRecordResponseDetailCopyWith<$Res> {
  _$MeetingRecordResponseDetailCopyWithImpl(this._value, this._then);

  final MeetingRecordResponseDetail _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordResponseDetail) _then;

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
              as List<MeetingRecordResponseDetail>,
    ));
  }
}

/// @nodoc
abstract class _$MeetingRecordResponseDetailCopyWith<$Res>
    implements $MeetingRecordResponseDetailCopyWith<$Res> {
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
      List<MeetingRecordResponseDetail> meetingRecord});
}

/// @nodoc
class __$MeetingRecordResponseDetailCopyWithImpl<$Res>
    extends _$MeetingRecordResponseDetailCopyWithImpl<$Res>
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
              as List<MeetingRecordResponseDetail>,
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
  final List<MeetingRecordResponseDetail> meetingRecord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordResponseDetail(numberOfRecords: $numberOfRecords, numberOfReturn: $numberOfReturn, startRecord: $startRecord, nextRecordPosition: $nextRecordPosition, meetingRecord: $meetingRecord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordResponseDetail'))
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
    implements MeetingRecordResponseDetail {
  const factory _MeetingRecordResponseDetail(
          {required int numberOfRecords,
          required int numberOfReturn,
          required int startRecord,
          required int? nextRecordPosition,
          List<MeetingRecordResponseDetail> meetingRecord}) =
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
  List<MeetingRecordResponseDetail> get meetingRecord;
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
      bool closing = false,
      List<MeetingRecordSpeechDetail> speechRecord = const [],
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool get closing => throw _privateConstructorUsedError;

  /// 発言リスト
  List<MeetingRecordSpeechDetail> get speechRecord =>
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
      bool closing,
      List<MeetingRecordSpeechDetail> speechRecord,
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
              as bool,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSpeechDetail>,
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
      bool closing,
      List<MeetingRecordSpeechDetail> speechRecord,
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
              as bool,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSpeechDetail>,
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
      this.closing = false,
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  final bool closing;
  @JsonKey()
  @override

  /// 発言リスト
  final List<MeetingRecordSpeechDetail> speechRecord;
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
      bool closing,
      List<MeetingRecordSpeechDetail> speechRecord,
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool get closing;
  @override

  /// 発言リスト
  List<MeetingRecordSpeechDetail> get speechRecord;
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

MeetingRecordSpeechDetail _$MeetingRecordSpeechDetailFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSpeechDetail.fromJson(json);
}

/// @nodoc
class _$MeetingRecordSpeechDetailTearOff {
  const _$MeetingRecordSpeechDetailTearOff();

  _MeetingRecordSpeechDetail call(
      {required String speechID,
      required String speechOrder,
      required String speaker,
      required String speakerYomi,
      required String speakerGroup,
      required String speakerPosition,
      required String speakerRole,
      required String speech,
      required int startPage,
      required String createTime,
      required String updateTime,
      required String speechURL}) {
    return _MeetingRecordSpeechDetail(
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

  MeetingRecordSpeechDetail fromJson(Map<String, Object?> json) {
    return MeetingRecordSpeechDetail.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordSpeechDetail = _$MeetingRecordSpeechDetailTearOff();

/// @nodoc
mixin _$MeetingRecordSpeechDetail {
  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;

  /// 発言番号
  String get speechOrder => throw _privateConstructorUsedError;

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
  $MeetingRecordSpeechDetailCopyWith<MeetingRecordSpeechDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordSpeechDetailCopyWith<$Res> {
  factory $MeetingRecordSpeechDetailCopyWith(MeetingRecordSpeechDetail value,
          $Res Function(MeetingRecordSpeechDetail) then) =
      _$MeetingRecordSpeechDetailCopyWithImpl<$Res>;
  $Res call(
      {String speechID,
      String speechOrder,
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
class _$MeetingRecordSpeechDetailCopyWithImpl<$Res>
    implements $MeetingRecordSpeechDetailCopyWith<$Res> {
  _$MeetingRecordSpeechDetailCopyWithImpl(this._value, this._then);

  final MeetingRecordSpeechDetail _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordSpeechDetail) _then;

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
              as String,
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
abstract class _$MeetingRecordSpeechDetailCopyWith<$Res>
    implements $MeetingRecordSpeechDetailCopyWith<$Res> {
  factory _$MeetingRecordSpeechDetailCopyWith(_MeetingRecordSpeechDetail value,
          $Res Function(_MeetingRecordSpeechDetail) then) =
      __$MeetingRecordSpeechDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String speechID,
      String speechOrder,
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
class __$MeetingRecordSpeechDetailCopyWithImpl<$Res>
    extends _$MeetingRecordSpeechDetailCopyWithImpl<$Res>
    implements _$MeetingRecordSpeechDetailCopyWith<$Res> {
  __$MeetingRecordSpeechDetailCopyWithImpl(_MeetingRecordSpeechDetail _value,
      $Res Function(_MeetingRecordSpeechDetail) _then)
      : super(_value, (v) => _then(v as _MeetingRecordSpeechDetail));

  @override
  _MeetingRecordSpeechDetail get _value =>
      super._value as _MeetingRecordSpeechDetail;

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
    return _then(_MeetingRecordSpeechDetail(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_MeetingRecordSpeechDetail
    with DiagnosticableTreeMixin
    implements _MeetingRecordSpeechDetail {
  const _$_MeetingRecordSpeechDetail(
      {required this.speechID,
      required this.speechOrder,
      required this.speaker,
      required this.speakerYomi,
      required this.speakerGroup,
      required this.speakerPosition,
      required this.speakerRole,
      required this.speech,
      required this.startPage,
      required this.createTime,
      required this.updateTime,
      required this.speechURL});

  factory _$_MeetingRecordSpeechDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSpeechDetailFromJson(json);

  @override

  /// 発言ID
  final String speechID;
  @override

  /// 発言番号
  final String speechOrder;
  @override

  /// 発言者名
  final String speaker;
  @override

  /// 発言者よみ
  final String speakerYomi;
  @override

  /// 発言者所属会派
  final String speakerGroup;
  @override

  /// 発言者肩書き
  final String speakerPosition;
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
    return 'MeetingRecordSpeechDetail(speechID: $speechID, speechOrder: $speechOrder, speaker: $speaker, speakerYomi: $speakerYomi, speakerGroup: $speakerGroup, speakerPosition: $speakerPosition, speakerRole: $speakerRole, speech: $speech, startPage: $startPage, createTime: $createTime, updateTime: $updateTime, speechURL: $speechURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordSpeechDetail'))
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
            other is _MeetingRecordSpeechDetail &&
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
  _$MeetingRecordSpeechDetailCopyWith<_MeetingRecordSpeechDetail>
      get copyWith =>
          __$MeetingRecordSpeechDetailCopyWithImpl<_MeetingRecordSpeechDetail>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSpeechDetailToJson(this);
  }
}

abstract class _MeetingRecordSpeechDetail implements MeetingRecordSpeechDetail {
  const factory _MeetingRecordSpeechDetail(
      {required String speechID,
      required String speechOrder,
      required String speaker,
      required String speakerYomi,
      required String speakerGroup,
      required String speakerPosition,
      required String speakerRole,
      required String speech,
      required int startPage,
      required String createTime,
      required String updateTime,
      required String speechURL}) = _$_MeetingRecordSpeechDetail;

  factory _MeetingRecordSpeechDetail.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordSpeechDetail.fromJson;

  @override

  /// 発言ID
  String get speechID;
  @override

  /// 発言番号
  String get speechOrder;
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
  _$MeetingRecordSpeechDetailCopyWith<_MeetingRecordSpeechDetail>
      get copyWith => throw _privateConstructorUsedError;
}

MeetingRecordResponseSummary _$MeetingRecordResponseSummaryFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordResponseSummary.fromJson(json);
}

/// @nodoc
class _$MeetingRecordResponseSummaryTearOff {
  const _$MeetingRecordResponseSummaryTearOff();

  _MeetingRecordResponseSummary call(
      {required int numberOfRecords,
      required int numberOfReturn,
      required int startRecord,
      required int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord = const []}) {
    return _MeetingRecordResponseSummary(
      numberOfRecords: numberOfRecords,
      numberOfReturn: numberOfReturn,
      startRecord: startRecord,
      nextRecordPosition: nextRecordPosition,
      meetingRecord: meetingRecord,
    );
  }

  MeetingRecordResponseSummary fromJson(Map<String, Object?> json) {
    return MeetingRecordResponseSummary.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordResponseSummary = _$MeetingRecordResponseSummaryTearOff();

/// @nodoc
mixin _$MeetingRecordResponseSummary {
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
  $MeetingRecordResponseSummaryCopyWith<MeetingRecordResponseSummary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordResponseSummaryCopyWith<$Res> {
  factory $MeetingRecordResponseSummaryCopyWith(
          MeetingRecordResponseSummary value,
          $Res Function(MeetingRecordResponseSummary) then) =
      _$MeetingRecordResponseSummaryCopyWithImpl<$Res>;
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class _$MeetingRecordResponseSummaryCopyWithImpl<$Res>
    implements $MeetingRecordResponseSummaryCopyWith<$Res> {
  _$MeetingRecordResponseSummaryCopyWithImpl(this._value, this._then);

  final MeetingRecordResponseSummary _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordResponseSummary) _then;

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
abstract class _$MeetingRecordResponseSummaryCopyWith<$Res>
    implements $MeetingRecordResponseSummaryCopyWith<$Res> {
  factory _$MeetingRecordResponseSummaryCopyWith(
          _MeetingRecordResponseSummary value,
          $Res Function(_MeetingRecordResponseSummary) then) =
      __$MeetingRecordResponseSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfRecords,
      int numberOfReturn,
      int startRecord,
      int? nextRecordPosition,
      List<MeetingRecordSummary> meetingRecord});
}

/// @nodoc
class __$MeetingRecordResponseSummaryCopyWithImpl<$Res>
    extends _$MeetingRecordResponseSummaryCopyWithImpl<$Res>
    implements _$MeetingRecordResponseSummaryCopyWith<$Res> {
  __$MeetingRecordResponseSummaryCopyWithImpl(
      _MeetingRecordResponseSummary _value,
      $Res Function(_MeetingRecordResponseSummary) _then)
      : super(_value, (v) => _then(v as _MeetingRecordResponseSummary));

  @override
  _MeetingRecordResponseSummary get _value =>
      super._value as _MeetingRecordResponseSummary;

  @override
  $Res call({
    Object? numberOfRecords = freezed,
    Object? numberOfReturn = freezed,
    Object? startRecord = freezed,
    Object? nextRecordPosition = freezed,
    Object? meetingRecord = freezed,
  }) {
    return _then(_MeetingRecordResponseSummary(
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
class _$_MeetingRecordResponseSummary
    with DiagnosticableTreeMixin
    implements _MeetingRecordResponseSummary {
  const _$_MeetingRecordResponseSummary(
      {required this.numberOfRecords,
      required this.numberOfReturn,
      required this.startRecord,
      required this.nextRecordPosition,
      this.meetingRecord = const []});

  factory _$_MeetingRecordResponseSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordResponseSummaryFromJson(json);

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
    return 'MeetingRecordResponseSummary(numberOfRecords: $numberOfRecords, numberOfReturn: $numberOfReturn, startRecord: $startRecord, nextRecordPosition: $nextRecordPosition, meetingRecord: $meetingRecord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordResponseSummary'))
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
            other is _MeetingRecordResponseSummary &&
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
  _$MeetingRecordResponseSummaryCopyWith<_MeetingRecordResponseSummary>
      get copyWith => __$MeetingRecordResponseSummaryCopyWithImpl<
          _MeetingRecordResponseSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordResponseSummaryToJson(this);
  }
}

abstract class _MeetingRecordResponseSummary
    implements MeetingRecordResponseSummary {
  const factory _MeetingRecordResponseSummary(
          {required int numberOfRecords,
          required int numberOfReturn,
          required int startRecord,
          required int? nextRecordPosition,
          List<MeetingRecordSummary> meetingRecord}) =
      _$_MeetingRecordResponseSummary;

  factory _MeetingRecordResponseSummary.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordResponseSummary.fromJson;

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
  _$MeetingRecordResponseSummaryCopyWith<_MeetingRecordResponseSummary>
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
      bool closing = false,
      List<MeetingRecordSpeechSummary> speechRecord = const [],
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool get closing => throw _privateConstructorUsedError;

  /// 発言リスト
  List<MeetingRecordSpeechSummary> get speechRecord =>
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
      bool closing,
      List<MeetingRecordSpeechSummary> speechRecord,
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
              as bool,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSpeechSummary>,
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
      bool closing,
      List<MeetingRecordSpeechSummary> speechRecord,
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
              as bool,
      speechRecord: speechRecord == freezed
          ? _value.speechRecord
          : speechRecord // ignore: cast_nullable_to_non_nullable
              as List<MeetingRecordSpeechSummary>,
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
      this.closing = false,
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  final bool closing;
  @JsonKey()
  @override

  /// 発言リスト
  final List<MeetingRecordSpeechSummary> speechRecord;
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
      bool closing,
      List<MeetingRecordSpeechSummary> speechRecord,
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

  /// 閉会中フラグ
  /// 検索対象を閉会中の会議録に限定するか否かを「true」「false」で指定可能。
  /// 省略可（省略時は「false」（限定しない）が指定されたものとして検索する）。
  bool get closing;
  @override

  /// 発言リスト
  List<MeetingRecordSpeechSummary> get speechRecord;
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

MeetingRecordSpeechSummary _$MeetingRecordSpeechSummaryFromJson(
    Map<String, dynamic> json) {
  return _MeetingRecordSpeechSummary.fromJson(json);
}

/// @nodoc
class _$MeetingRecordSpeechSummaryTearOff {
  const _$MeetingRecordSpeechSummaryTearOff();

  _MeetingRecordSpeechSummary call(
      {required String speechID,
      required String speechOrder,
      required String speaker,
      required String speechURL}) {
    return _MeetingRecordSpeechSummary(
      speechID: speechID,
      speechOrder: speechOrder,
      speaker: speaker,
      speechURL: speechURL,
    );
  }

  MeetingRecordSpeechSummary fromJson(Map<String, Object?> json) {
    return MeetingRecordSpeechSummary.fromJson(json);
  }
}

/// @nodoc
const $MeetingRecordSpeechSummary = _$MeetingRecordSpeechSummaryTearOff();

/// @nodoc
mixin _$MeetingRecordSpeechSummary {
  /// 発言ID
  String get speechID => throw _privateConstructorUsedError;

  /// 発言番号
  String get speechOrder => throw _privateConstructorUsedError;

  /// 発言者名
  String get speaker => throw _privateConstructorUsedError;

  /// 発言URL
  String get speechURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingRecordSpeechSummaryCopyWith<MeetingRecordSpeechSummary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingRecordSpeechSummaryCopyWith<$Res> {
  factory $MeetingRecordSpeechSummaryCopyWith(MeetingRecordSpeechSummary value,
          $Res Function(MeetingRecordSpeechSummary) then) =
      _$MeetingRecordSpeechSummaryCopyWithImpl<$Res>;
  $Res call(
      {String speechID, String speechOrder, String speaker, String speechURL});
}

/// @nodoc
class _$MeetingRecordSpeechSummaryCopyWithImpl<$Res>
    implements $MeetingRecordSpeechSummaryCopyWith<$Res> {
  _$MeetingRecordSpeechSummaryCopyWithImpl(this._value, this._then);

  final MeetingRecordSpeechSummary _value;
  // ignore: unused_field
  final $Res Function(MeetingRecordSpeechSummary) _then;

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
              as String,
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
abstract class _$MeetingRecordSpeechSummaryCopyWith<$Res>
    implements $MeetingRecordSpeechSummaryCopyWith<$Res> {
  factory _$MeetingRecordSpeechSummaryCopyWith(
          _MeetingRecordSpeechSummary value,
          $Res Function(_MeetingRecordSpeechSummary) then) =
      __$MeetingRecordSpeechSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String speechID, String speechOrder, String speaker, String speechURL});
}

/// @nodoc
class __$MeetingRecordSpeechSummaryCopyWithImpl<$Res>
    extends _$MeetingRecordSpeechSummaryCopyWithImpl<$Res>
    implements _$MeetingRecordSpeechSummaryCopyWith<$Res> {
  __$MeetingRecordSpeechSummaryCopyWithImpl(_MeetingRecordSpeechSummary _value,
      $Res Function(_MeetingRecordSpeechSummary) _then)
      : super(_value, (v) => _then(v as _MeetingRecordSpeechSummary));

  @override
  _MeetingRecordSpeechSummary get _value =>
      super._value as _MeetingRecordSpeechSummary;

  @override
  $Res call({
    Object? speechID = freezed,
    Object? speechOrder = freezed,
    Object? speaker = freezed,
    Object? speechURL = freezed,
  }) {
    return _then(_MeetingRecordSpeechSummary(
      speechID: speechID == freezed
          ? _value.speechID
          : speechID // ignore: cast_nullable_to_non_nullable
              as String,
      speechOrder: speechOrder == freezed
          ? _value.speechOrder
          : speechOrder // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_MeetingRecordSpeechSummary
    with DiagnosticableTreeMixin
    implements _MeetingRecordSpeechSummary {
  const _$_MeetingRecordSpeechSummary(
      {required this.speechID,
      required this.speechOrder,
      required this.speaker,
      required this.speechURL});

  factory _$_MeetingRecordSpeechSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MeetingRecordSpeechSummaryFromJson(json);

  @override

  /// 発言ID
  final String speechID;
  @override

  /// 発言番号
  final String speechOrder;
  @override

  /// 発言者名
  final String speaker;
  @override

  /// 発言URL
  final String speechURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MeetingRecordSpeechSummary(speechID: $speechID, speechOrder: $speechOrder, speaker: $speaker, speechURL: $speechURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MeetingRecordSpeechSummary'))
      ..add(DiagnosticsProperty('speechID', speechID))
      ..add(DiagnosticsProperty('speechOrder', speechOrder))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('speechURL', speechURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingRecordSpeechSummary &&
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
  _$MeetingRecordSpeechSummaryCopyWith<_MeetingRecordSpeechSummary>
      get copyWith => __$MeetingRecordSpeechSummaryCopyWithImpl<
          _MeetingRecordSpeechSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeetingRecordSpeechSummaryToJson(this);
  }
}

abstract class _MeetingRecordSpeechSummary
    implements MeetingRecordSpeechSummary {
  const factory _MeetingRecordSpeechSummary(
      {required String speechID,
      required String speechOrder,
      required String speaker,
      required String speechURL}) = _$_MeetingRecordSpeechSummary;

  factory _MeetingRecordSpeechSummary.fromJson(Map<String, dynamic> json) =
      _$_MeetingRecordSpeechSummary.fromJson;

  @override

  /// 発言ID
  String get speechID;
  @override

  /// 発言番号
  String get speechOrder;
  @override

  /// 発言者名
  String get speaker;
  @override

  /// 発言URL
  String get speechURL;
  @override
  @JsonKey(ignore: true)
  _$MeetingRecordSpeechSummaryCopyWith<_MeetingRecordSpeechSummary>
      get copyWith => throw _privateConstructorUsedError;
}
