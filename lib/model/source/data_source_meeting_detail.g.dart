// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_meeting_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataSourceMeetingDetailHash() =>
    r'779305aa0979d1c2bf7eae7bc3f876c96c615426';

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

/// See also [dataSourceMeetingDetail].
@ProviderFor(dataSourceMeetingDetail)
const dataSourceMeetingDetailProvider = DataSourceMeetingDetailFamily();

/// See also [dataSourceMeetingDetail].
class DataSourceMeetingDetailFamily extends Family<DataSourceMeetingDetail> {
  /// See also [dataSourceMeetingDetail].
  const DataSourceMeetingDetailFamily();

  /// See also [dataSourceMeetingDetail].
  DataSourceMeetingDetailProvider call({
    required SearchParams params,
  }) {
    return DataSourceMeetingDetailProvider(
      params: params,
    );
  }

  @override
  DataSourceMeetingDetailProvider getProviderOverride(
    covariant DataSourceMeetingDetailProvider provider,
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
  String? get name => r'dataSourceMeetingDetailProvider';
}

/// See also [dataSourceMeetingDetail].
class DataSourceMeetingDetailProvider
    extends AutoDisposeProvider<DataSourceMeetingDetail> {
  /// See also [dataSourceMeetingDetail].
  DataSourceMeetingDetailProvider({
    required SearchParams params,
  }) : this._internal(
          (ref) => dataSourceMeetingDetail(
            ref as DataSourceMeetingDetailRef,
            params: params,
          ),
          from: dataSourceMeetingDetailProvider,
          name: r'dataSourceMeetingDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceMeetingDetailHash,
          dependencies: DataSourceMeetingDetailFamily._dependencies,
          allTransitiveDependencies:
              DataSourceMeetingDetailFamily._allTransitiveDependencies,
          params: params,
        );

  DataSourceMeetingDetailProvider._internal(
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
    DataSourceMeetingDetail Function(DataSourceMeetingDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DataSourceMeetingDetailProvider._internal(
        (ref) => create(ref as DataSourceMeetingDetailRef),
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
  AutoDisposeProviderElement<DataSourceMeetingDetail> createElement() {
    return _DataSourceMeetingDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DataSourceMeetingDetailProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DataSourceMeetingDetailRef
    on AutoDisposeProviderRef<DataSourceMeetingDetail> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _DataSourceMeetingDetailProviderElement
    extends AutoDisposeProviderElement<DataSourceMeetingDetail>
    with DataSourceMeetingDetailRef {
  _DataSourceMeetingDetailProviderElement(super.provider);

  @override
  SearchParams get params => (origin as DataSourceMeetingDetailProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
