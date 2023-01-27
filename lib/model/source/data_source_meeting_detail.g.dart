// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_meeting_detail.dart';

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

String _$dataSourceMeetingDetailHash() =>
    r'779305aa0979d1c2bf7eae7bc3f876c96c615426';

/// See also [dataSourceMeetingDetail].
class DataSourceMeetingDetailProvider
    extends AutoDisposeProvider<DataSourceMeetingDetail> {
  DataSourceMeetingDetailProvider({
    required this.params,
  }) : super(
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

typedef DataSourceMeetingDetailRef
    = AutoDisposeProviderRef<DataSourceMeetingDetail>;

/// See also [dataSourceMeetingDetail].
final dataSourceMeetingDetailProvider = DataSourceMeetingDetailFamily();

class DataSourceMeetingDetailFamily extends Family<DataSourceMeetingDetail> {
  DataSourceMeetingDetailFamily();

  DataSourceMeetingDetailProvider call({
    required SearchParams params,
  }) {
    return DataSourceMeetingDetailProvider(
      params: params,
    );
  }

  @override
  AutoDisposeProvider<DataSourceMeetingDetail> getProviderOverride(
    covariant DataSourceMeetingDetailProvider provider,
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
  String? get name => r'dataSourceMeetingDetailProvider';
}
