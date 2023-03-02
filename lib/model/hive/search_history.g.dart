// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchHistoryAdapter extends TypeAdapter<SearchHistory> {
  @override
  final int typeId = 21;

  @override
  SearchHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchHistory(
      updatedAt: fields[1] as DateTime,
      memo: fields[2] as String,
      params: fields[3] as SearchParams,
    );
  }

  @override
  void write(BinaryWriter writer, SearchHistory obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.updatedAt)
      ..writeByte(2)
      ..write(obj.memo)
      ..writeByte(3)
      ..write(obj.params);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchHistoryBoxHash() => r'3de55a390765bd33b679106eba72efc7b78bafaa';

/// See also [searchHistoryBox].
@ProviderFor(searchHistoryBox)
final searchHistoryBoxProvider =
    AutoDisposeProvider<Box<SearchHistory>>.internal(
  searchHistoryBox,
  name: r'searchHistoryBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchHistoryBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchHistoryBoxRef = AutoDisposeProviderRef<Box<SearchHistory>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
