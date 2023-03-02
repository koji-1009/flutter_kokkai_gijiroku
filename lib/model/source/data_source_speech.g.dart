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

typedef DataSourceSpeechRef = AutoDisposeProviderRef<DataSourceSpeech>;

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
    required this.params,
  }) : super.internal(
          (ref) => dataSourceSpeech(
            ref,
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
        );

  final SearchParams params;

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
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
