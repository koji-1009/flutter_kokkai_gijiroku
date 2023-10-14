// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_meeting_summary.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataSourceMeetingSummaryHash() =>
    r'fe9ae09d9ceba3af97e611bd6fee1069661b1919';

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

/// See also [dataSourceMeetingSummary].
@ProviderFor(dataSourceMeetingSummary)
const dataSourceMeetingSummaryProvider = DataSourceMeetingSummaryFamily();

/// See also [dataSourceMeetingSummary].
class DataSourceMeetingSummaryFamily extends Family<DataSourceMeetingSummary> {
  /// See also [dataSourceMeetingSummary].
  const DataSourceMeetingSummaryFamily();

  /// See also [dataSourceMeetingSummary].
  DataSourceMeetingSummaryProvider call({
    required SearchParams params,
  }) {
    return DataSourceMeetingSummaryProvider(
      params: params,
    );
  }

  @override
  DataSourceMeetingSummaryProvider getProviderOverride(
    covariant DataSourceMeetingSummaryProvider provider,
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
  String? get name => r'dataSourceMeetingSummaryProvider';
}

/// See also [dataSourceMeetingSummary].
class DataSourceMeetingSummaryProvider
    extends AutoDisposeProvider<DataSourceMeetingSummary> {
  /// See also [dataSourceMeetingSummary].
  DataSourceMeetingSummaryProvider({
    required SearchParams params,
  }) : this._internal(
          (ref) => dataSourceMeetingSummary(
            ref as DataSourceMeetingSummaryRef,
            params: params,
          ),
          from: dataSourceMeetingSummaryProvider,
          name: r'dataSourceMeetingSummaryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceMeetingSummaryHash,
          dependencies: DataSourceMeetingSummaryFamily._dependencies,
          allTransitiveDependencies:
              DataSourceMeetingSummaryFamily._allTransitiveDependencies,
          params: params,
        );

  DataSourceMeetingSummaryProvider._internal(
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
    DataSourceMeetingSummary Function(DataSourceMeetingSummaryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DataSourceMeetingSummaryProvider._internal(
        (ref) => create(ref as DataSourceMeetingSummaryRef),
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
  AutoDisposeProviderElement<DataSourceMeetingSummary> createElement() {
    return _DataSourceMeetingSummaryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DataSourceMeetingSummaryProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DataSourceMeetingSummaryRef
    on AutoDisposeProviderRef<DataSourceMeetingSummary> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _DataSourceMeetingSummaryProviderElement
    extends AutoDisposeProviderElement<DataSourceMeetingSummary>
    with DataSourceMeetingSummaryRef {
  _DataSourceMeetingSummaryProviderElement(super.provider);

  @override
  SearchParams get params =>
      (origin as DataSourceMeetingSummaryProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
