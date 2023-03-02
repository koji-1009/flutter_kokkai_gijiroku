// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_presenter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$speechDetailHash() => r'9d5bc9d9cef8a211105ce76fdec7c37f2cb29519';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef SpeechDetailRef = AutoDisposeFutureProviderRef<SpeechRecordResponse>;

/// See also [speechDetail].
@ProviderFor(speechDetail)
const speechDetailProvider = SpeechDetailFamily();

/// See also [speechDetail].
class SpeechDetailFamily extends Family<AsyncValue<SpeechRecordResponse>> {
  /// See also [speechDetail].
  const SpeechDetailFamily();

  /// See also [speechDetail].
  SpeechDetailProvider call({
    required String speechID,
  }) {
    return SpeechDetailProvider(
      speechID: speechID,
    );
  }

  @override
  SpeechDetailProvider getProviderOverride(
    covariant SpeechDetailProvider provider,
  ) {
    return call(
      speechID: provider.speechID,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'speechDetailProvider';
}

/// See also [speechDetail].
class SpeechDetailProvider
    extends AutoDisposeFutureProvider<SpeechRecordResponse> {
  /// See also [speechDetail].
  SpeechDetailProvider({
    required this.speechID,
  }) : super.internal(
          (ref) => speechDetail(
            ref,
            speechID: speechID,
          ),
          from: speechDetailProvider,
          name: r'speechDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$speechDetailHash,
          dependencies: SpeechDetailFamily._dependencies,
          allTransitiveDependencies:
              SpeechDetailFamily._allTransitiveDependencies,
        );

  final String speechID;

  @override
  bool operator ==(Object other) {
    return other is SpeechDetailProvider && other.speechID == speechID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, speechID.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$speechInfoHash() => r'513ae80f5fa28c0690f44be03b4b7566c18537a6';
typedef SpeechInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [speechInfo].
@ProviderFor(speechInfo)
const speechInfoProvider = SpeechInfoFamily();

/// See also [speechInfo].
class SpeechInfoFamily extends Family<AsyncValue<int>> {
  /// See also [speechInfo].
  const SpeechInfoFamily();

  /// See also [speechInfo].
  SpeechInfoProvider call({
    required SearchParams params,
  }) {
    return SpeechInfoProvider(
      params: params,
    );
  }

  @override
  SpeechInfoProvider getProviderOverride(
    covariant SpeechInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'speechInfoProvider';
}

/// See also [speechInfo].
class SpeechInfoProvider extends AutoDisposeFutureProvider<int> {
  /// See also [speechInfo].
  SpeechInfoProvider({
    required this.params,
  }) : super.internal(
          (ref) => speechInfo(
            ref,
            params: params,
          ),
          from: speechInfoProvider,
          name: r'speechInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$speechInfoHash,
          dependencies: SpeechInfoFamily._dependencies,
          allTransitiveDependencies:
              SpeechInfoFamily._allTransitiveDependencies,
        );

  final SearchParams params;

  @override
  bool operator ==(Object other) {
    return other is SpeechInfoProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$meetingSummaryInfoHash() =>
    r'866b4282cb839190881b13a21f009b41f6c04aaa';
typedef MeetingSummaryInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [meetingSummaryInfo].
@ProviderFor(meetingSummaryInfo)
const meetingSummaryInfoProvider = MeetingSummaryInfoFamily();

/// See also [meetingSummaryInfo].
class MeetingSummaryInfoFamily extends Family<AsyncValue<int>> {
  /// See also [meetingSummaryInfo].
  const MeetingSummaryInfoFamily();

  /// See also [meetingSummaryInfo].
  MeetingSummaryInfoProvider call({
    required SearchParams params,
  }) {
    return MeetingSummaryInfoProvider(
      params: params,
    );
  }

  @override
  MeetingSummaryInfoProvider getProviderOverride(
    covariant MeetingSummaryInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'meetingSummaryInfoProvider';
}

/// See also [meetingSummaryInfo].
class MeetingSummaryInfoProvider extends AutoDisposeFutureProvider<int> {
  /// See also [meetingSummaryInfo].
  MeetingSummaryInfoProvider({
    required this.params,
  }) : super.internal(
          (ref) => meetingSummaryInfo(
            ref,
            params: params,
          ),
          from: meetingSummaryInfoProvider,
          name: r'meetingSummaryInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$meetingSummaryInfoHash,
          dependencies: MeetingSummaryInfoFamily._dependencies,
          allTransitiveDependencies:
              MeetingSummaryInfoFamily._allTransitiveDependencies,
        );

  final SearchParams params;

  @override
  bool operator ==(Object other) {
    return other is MeetingSummaryInfoProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$meetingDetailInfoHash() => r'7afa6fb418cc87d85dc458d2ecd12a1d7c8f36e9';
typedef MeetingDetailInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [meetingDetailInfo].
@ProviderFor(meetingDetailInfo)
const meetingDetailInfoProvider = MeetingDetailInfoFamily();

/// See also [meetingDetailInfo].
class MeetingDetailInfoFamily extends Family<AsyncValue<int>> {
  /// See also [meetingDetailInfo].
  const MeetingDetailInfoFamily();

  /// See also [meetingDetailInfo].
  MeetingDetailInfoProvider call({
    required SearchParams params,
  }) {
    return MeetingDetailInfoProvider(
      params: params,
    );
  }

  @override
  MeetingDetailInfoProvider getProviderOverride(
    covariant MeetingDetailInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'meetingDetailInfoProvider';
}

/// See also [meetingDetailInfo].
class MeetingDetailInfoProvider extends AutoDisposeFutureProvider<int> {
  /// See also [meetingDetailInfo].
  MeetingDetailInfoProvider({
    required this.params,
  }) : super.internal(
          (ref) => meetingDetailInfo(
            ref,
            params: params,
          ),
          from: meetingDetailInfoProvider,
          name: r'meetingDetailInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$meetingDetailInfoHash,
          dependencies: MeetingDetailInfoFamily._dependencies,
          allTransitiveDependencies:
              MeetingDetailInfoFamily._allTransitiveDependencies,
        );

  final SearchParams params;

  @override
  bool operator ==(Object other) {
    return other is MeetingDetailInfoProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
