// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_issue.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataSourceIssueHash() => r'ca3f644f49f66cb38f749dd8cc743242a2e06ec5';

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

/// See also [dataSourceIssue].
@ProviderFor(dataSourceIssue)
const dataSourceIssueProvider = DataSourceIssueFamily();

/// See also [dataSourceIssue].
class DataSourceIssueFamily extends Family<DataSourceIssue> {
  /// See also [dataSourceIssue].
  const DataSourceIssueFamily();

  /// See also [dataSourceIssue].
  DataSourceIssueProvider call({
    required String issueID,
  }) {
    return DataSourceIssueProvider(
      issueID: issueID,
    );
  }

  @override
  DataSourceIssueProvider getProviderOverride(
    covariant DataSourceIssueProvider provider,
  ) {
    return call(
      issueID: provider.issueID,
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
  String? get name => r'dataSourceIssueProvider';
}

/// See also [dataSourceIssue].
class DataSourceIssueProvider extends AutoDisposeProvider<DataSourceIssue> {
  /// See also [dataSourceIssue].
  DataSourceIssueProvider({
    required String issueID,
  }) : this._internal(
          (ref) => dataSourceIssue(
            ref as DataSourceIssueRef,
            issueID: issueID,
          ),
          from: dataSourceIssueProvider,
          name: r'dataSourceIssueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceIssueHash,
          dependencies: DataSourceIssueFamily._dependencies,
          allTransitiveDependencies:
              DataSourceIssueFamily._allTransitiveDependencies,
          issueID: issueID,
        );

  DataSourceIssueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.issueID,
  }) : super.internal();

  final String issueID;

  @override
  Override overrideWith(
    DataSourceIssue Function(DataSourceIssueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DataSourceIssueProvider._internal(
        (ref) => create(ref as DataSourceIssueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        issueID: issueID,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DataSourceIssue> createElement() {
    return _DataSourceIssueProviderElement(this);
  }

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

mixin DataSourceIssueRef on AutoDisposeProviderRef<DataSourceIssue> {
  /// The parameter `issueID` of this provider.
  String get issueID;
}

class _DataSourceIssueProviderElement
    extends AutoDisposeProviderElement<DataSourceIssue>
    with DataSourceIssueRef {
  _DataSourceIssueProviderElement(super.provider);

  @override
  String get issueID => (origin as DataSourceIssueProvider).issueID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
