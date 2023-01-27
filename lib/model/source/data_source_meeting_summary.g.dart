// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_meeting_summary.dart';

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

String _$dataSourceMeetingSummaryHash() =>
    r'3b1be075b2ad0b49cc2a33f42a8a63216128cca5';

/// See also [dataSourceMeetingSummary].
class DataSourceMeetingSummaryProvider
    extends AutoDisposeProvider<DataSourceMeetingSummary> {
  DataSourceMeetingSummaryProvider({
    required this.params,
  }) : super(
          (ref) => dataSourceMeetingSummary(
            ref,
            params: params,
          ),
          from: dataSourceMeetingSummaryProvider,
          name: r'dataSourceMeetingSummaryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceMeetingSummaryHash,
        );

  final SearchParams params;

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

typedef DataSourceMeetingSummaryRef
    = AutoDisposeProviderRef<DataSourceMeetingSummary>;

/// See also [dataSourceMeetingSummary].
final dataSourceMeetingSummaryProvider = DataSourceMeetingSummaryFamily();

class DataSourceMeetingSummaryFamily extends Family<DataSourceMeetingSummary> {
  DataSourceMeetingSummaryFamily();

  DataSourceMeetingSummaryProvider call({
    required SearchParams params,
  }) {
    return DataSourceMeetingSummaryProvider(
      params: params,
    );
  }

  @override
  AutoDisposeProvider<DataSourceMeetingSummary> getProviderOverride(
    covariant DataSourceMeetingSummaryProvider provider,
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
  String? get name => r'dataSourceMeetingSummaryProvider';
}
