// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_presenter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$speechDetailHash() => r'9d5bc9d9cef8a211105ce76fdec7c37f2cb29519';

/// See also [speechDetail].
class SpeechDetailProvider
    extends AutoDisposeFutureProvider<SpeechRecordResponse> {
  SpeechDetailProvider({
    required this.speechID,
  }) : super(
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

typedef SpeechDetailRef = AutoDisposeFutureProviderRef<SpeechRecordResponse>;

/// See also [speechDetail].
final speechDetailProvider = SpeechDetailFamily();

class SpeechDetailFamily extends Family<AsyncValue<SpeechRecordResponse>> {
  SpeechDetailFamily();

  SpeechDetailProvider call({
    required String speechID,
  }) {
    return SpeechDetailProvider(
      speechID: speechID,
    );
  }

  @override
  AutoDisposeFutureProvider<SpeechRecordResponse> getProviderOverride(
    covariant SpeechDetailProvider provider,
  ) {
    return call(
      speechID: provider.speechID,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'speechDetailProvider';
}

String _$speechInfoHash() => r'513ae80f5fa28c0690f44be03b4b7566c18537a6';

/// See also [speechInfo].
class SpeechInfoProvider extends AutoDisposeFutureProvider<int> {
  SpeechInfoProvider({
    required this.params,
  }) : super(
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

typedef SpeechInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [speechInfo].
final speechInfoProvider = SpeechInfoFamily();

class SpeechInfoFamily extends Family<AsyncValue<int>> {
  SpeechInfoFamily();

  SpeechInfoProvider call({
    required SearchParams params,
  }) {
    return SpeechInfoProvider(
      params: params,
    );
  }

  @override
  AutoDisposeFutureProvider<int> getProviderOverride(
    covariant SpeechInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'speechInfoProvider';
}

String _$meetingSummaryInfoHash() =>
    r'866b4282cb839190881b13a21f009b41f6c04aaa';

/// See also [meetingSummaryInfo].
class MeetingSummaryInfoProvider extends AutoDisposeFutureProvider<int> {
  MeetingSummaryInfoProvider({
    required this.params,
  }) : super(
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

typedef MeetingSummaryInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [meetingSummaryInfo].
final meetingSummaryInfoProvider = MeetingSummaryInfoFamily();

class MeetingSummaryInfoFamily extends Family<AsyncValue<int>> {
  MeetingSummaryInfoFamily();

  MeetingSummaryInfoProvider call({
    required SearchParams params,
  }) {
    return MeetingSummaryInfoProvider(
      params: params,
    );
  }

  @override
  AutoDisposeFutureProvider<int> getProviderOverride(
    covariant MeetingSummaryInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'meetingSummaryInfoProvider';
}

String _$meetingDetailInfoHash() => r'7afa6fb418cc87d85dc458d2ecd12a1d7c8f36e9';

/// See also [meetingDetailInfo].
class MeetingDetailInfoProvider extends AutoDisposeFutureProvider<int> {
  MeetingDetailInfoProvider({
    required this.params,
  }) : super(
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

typedef MeetingDetailInfoRef = AutoDisposeFutureProviderRef<int>;

/// See also [meetingDetailInfo].
final meetingDetailInfoProvider = MeetingDetailInfoFamily();

class MeetingDetailInfoFamily extends Family<AsyncValue<int>> {
  MeetingDetailInfoFamily();

  MeetingDetailInfoProvider call({
    required SearchParams params,
  }) {
    return MeetingDetailInfoProvider(
      params: params,
    );
  }

  @override
  AutoDisposeFutureProvider<int> getProviderOverride(
    covariant MeetingDetailInfoProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'meetingDetailInfoProvider';
}
