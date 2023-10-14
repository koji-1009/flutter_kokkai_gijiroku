// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_speech.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dataSourceSpeechHash() => r'c99dd8d0df003aee6f8ac172fdfe904d9b663b99';

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

/// See also [dataSourceSpeech].
@ProviderFor(dataSourceSpeech)
const dataSourceSpeechProvider = DataSourceSpeechFamily();

/// See also [dataSourceSpeech].
class DataSourceSpeechFamily extends Family<DataSourceSpeech> {
  /// See also [dataSourceSpeech].
  const DataSourceSpeechFamily();

  /// See also [dataSourceSpeech].
  DataSourceSpeechProvider call({
    required SearchParams params,
  }) {
    return DataSourceSpeechProvider(
      params: params,
    );
  }

  @override
  DataSourceSpeechProvider getProviderOverride(
    covariant DataSourceSpeechProvider provider,
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
  String? get name => r'dataSourceSpeechProvider';
}

/// See also [dataSourceSpeech].
class DataSourceSpeechProvider extends AutoDisposeProvider<DataSourceSpeech> {
  /// See also [dataSourceSpeech].
  DataSourceSpeechProvider({
    required SearchParams params,
  }) : this._internal(
          (ref) => dataSourceSpeech(
            ref as DataSourceSpeechRef,
            params: params,
          ),
          from: dataSourceSpeechProvider,
          name: r'dataSourceSpeechProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dataSourceSpeechHash,
          dependencies: DataSourceSpeechFamily._dependencies,
          allTransitiveDependencies:
              DataSourceSpeechFamily._allTransitiveDependencies,
          params: params,
        );

  DataSourceSpeechProvider._internal(
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
    DataSourceSpeech Function(DataSourceSpeechRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DataSourceSpeechProvider._internal(
        (ref) => create(ref as DataSourceSpeechRef),
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
  AutoDisposeProviderElement<DataSourceSpeech> createElement() {
    return _DataSourceSpeechProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DataSourceSpeechProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DataSourceSpeechRef on AutoDisposeProviderRef<DataSourceSpeech> {
  /// The parameter `params` of this provider.
  SearchParams get params;
}

class _DataSourceSpeechProviderElement
    extends AutoDisposeProviderElement<DataSourceSpeech>
    with DataSourceSpeechRef {
  _DataSourceSpeechProviderElement(super.provider);

  @override
  SearchParams get params => (origin as DataSourceSpeechProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
