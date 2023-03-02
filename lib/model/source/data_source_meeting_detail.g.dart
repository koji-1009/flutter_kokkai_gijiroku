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

typedef DataSourceMeetingDetailRef
    = AutoDisposeProviderRef<DataSourceMeetingDetail>;

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
    required this.params,
  }) : super.internal(
          (ref) => dataSourceMeetingDetail(
            ref,
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
        );

  final SearchParams params;

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
