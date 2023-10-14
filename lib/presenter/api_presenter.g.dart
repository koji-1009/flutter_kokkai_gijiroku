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
    required String speechID,
  }) : this._internal(
          (ref) => speechDetail(
            ref as SpeechDetailRef,
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
          speechID: speechID,
        );

  SpeechDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.speechID,
  }) : super.internal();

  final String speechID;

  @override
  Override overrideWith(
    FutureOr<SpeechRecordResponse> Function(SpeechDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SpeechDetailProvider._internal(
        (ref) => create(ref as SpeechDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        speechID: speechID,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SpeechRecordResponse> createElement() {
    return _SpeechDetailProviderElement(this);
  }

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

mixin SpeechDetailRef on AutoDisposeFutureProviderRef<SpeechRecordResponse> {
  /// The parameter `speechID` of this provider.
  String get speechID;
}

class _SpeechDetailProviderElement
    extends AutoDisposeFutureProviderElement<SpeechRecordResponse>
    with SpeechDetailRef {
  _SpeechDetailProviderElement(super.provider);

  @override
  String get speechID => (origin as SpeechDetailProvider).speechID;
}

String _$speechInfoHash() => r'513ae80f5fa28c0690f44be03b4b7566c18537a6';

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
    required SearchParams params,
  }) : this._internal(
          (ref) => speechInfo(
            ref as SpeechInfoRef,
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
          params: params,
        );

  SpeechInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SearchParams params;

  @override
  Override overrideWith(
    FutureOr<int> Function(SpeechInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SpeechInfoProvider._internal(
        (ref) => create(ref as SpeechInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _SpeechInfoProviderElement(this);
  }

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

mixin SpeechInfoRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _SpeechInfoProviderElement extends AutoDisposeFutureProviderElement<int>
    with SpeechInfoRef {
  _SpeechInfoProviderElement(super.provider);

  @override
  SearchParams get params => (origin as SpeechInfoProvider).params;
}

String _$meetingSummaryInfoHash() =>
    r'866b4282cb839190881b13a21f009b41f6c04aaa';

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
    required SearchParams params,
  }) : this._internal(
          (ref) => meetingSummaryInfo(
            ref as MeetingSummaryInfoRef,
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
          params: params,
        );

  MeetingSummaryInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SearchParams params;

  @override
  Override overrideWith(
    FutureOr<int> Function(MeetingSummaryInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MeetingSummaryInfoProvider._internal(
        (ref) => create(ref as MeetingSummaryInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _MeetingSummaryInfoProviderElement(this);
  }

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

mixin MeetingSummaryInfoRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _MeetingSummaryInfoProviderElement
    extends AutoDisposeFutureProviderElement<int> with MeetingSummaryInfoRef {
  _MeetingSummaryInfoProviderElement(super.provider);

  @override
  SearchParams get params => (origin as MeetingSummaryInfoProvider).params;
}

String _$meetingDetailInfoHash() => r'7afa6fb418cc87d85dc458d2ecd12a1d7c8f36e9';

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
    required SearchParams params,
  }) : this._internal(
          (ref) => meetingDetailInfo(
            ref as MeetingDetailInfoRef,
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
          params: params,
        );

  MeetingDetailInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SearchParams params;

  @override
  Override overrideWith(
    FutureOr<int> Function(MeetingDetailInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MeetingDetailInfoProvider._internal(
        (ref) => create(ref as MeetingDetailInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<int> createElement() {
    return _MeetingDetailInfoProviderElement(this);
  }

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

mixin MeetingDetailInfoRef on AutoDisposeFutureProviderRef<int> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _MeetingDetailInfoProviderElement
    extends AutoDisposeFutureProviderElement<int> with MeetingDetailInfoRef {
  _MeetingDetailInfoProviderElement(super.provider);

  @override
  SearchParams get params => (origin as MeetingDetailInfoProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
