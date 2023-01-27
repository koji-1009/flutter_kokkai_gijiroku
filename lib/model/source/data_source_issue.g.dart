// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_issue.dart';

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

String _$dataSourceIssueHash() => r'ca3f644f49f66cb38f749dd8cc743242a2e06ec5';

/// See also [dataSourceIssue].
class DataSourceIssueProvider extends AutoDisposeProvider<DataSourceIssue> {
  DataSourceIssueProvider({
    required this.issueID,
  }) : super(
          (ref) => dataSourceIssue(
            ref,
            issueID: issueID,
          ),
          from: dataSourceIssueProvider,
          name: r'dataSourceIssueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceIssueHash,
        );

  final String issueID;

  @override
  bool operator ==(Object other) {
    return other is DataSourceIssueProvider && other.issueID == issueID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, issueID.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef DataSourceIssueRef = AutoDisposeProviderRef<DataSourceIssue>;

/// See also [dataSourceIssue].
final dataSourceIssueProvider = DataSourceIssueFamily();

class DataSourceIssueFamily extends Family<DataSourceIssue> {
  DataSourceIssueFamily();

  DataSourceIssueProvider call({
    required String issueID,
  }) {
    return DataSourceIssueProvider(
      issueID: issueID,
    );
  }

  @override
  AutoDisposeProvider<DataSourceIssue> getProviderOverride(
    covariant DataSourceIssueProvider provider,
  ) {
    return call(
      issueID: provider.issueID,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'dataSourceIssueProvider';
}
