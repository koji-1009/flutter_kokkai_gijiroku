// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchParamsAdapter extends TypeAdapter<SearchParams> {
  @override
  final int typeId = 14;

  @override
  SearchParams read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchParams(
      nameOfHouse: fields[0] as NameOfHouse,
      nameOfMeeting: fields[1] as String,
      any: fields[2] as String,
      speaker: fields[3] as String,
      from: fields[4] as DateTime?,
      until: fields[5] as DateTime?,
      supplementAndAppendix: fields[6] as bool,
      contentsAndIndex: fields[7] as bool,
      searchRange: fields[8] as SearchRange,
      closing: fields[9] as bool,
      speechNumber: fields[10] as int?,
      speakerPosition: fields[11] as String,
      speakerGroup: fields[12] as String,
      speakerRole: fields[13] as SpeakerRole,
      speechID: fields[14] as String,
      issueID: fields[15] as String,
      sessionFrom: fields[16] as int?,
      sessionTo: fields[17] as int?,
      issueFrom: fields[18] as int?,
      issueTo: fields[19] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, SearchParams obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.nameOfHouse)
      ..writeByte(1)
      ..write(obj.nameOfMeeting)
      ..writeByte(2)
      ..write(obj.any)
      ..writeByte(3)
      ..write(obj.speaker)
      ..writeByte(4)
      ..write(obj.from)
      ..writeByte(5)
      ..write(obj.until)
      ..writeByte(6)
      ..write(obj.supplementAndAppendix)
      ..writeByte(7)
      ..write(obj.contentsAndIndex)
      ..writeByte(8)
      ..write(obj.searchRange)
      ..writeByte(9)
      ..write(obj.closing)
      ..writeByte(10)
      ..write(obj.speechNumber)
      ..writeByte(11)
      ..write(obj.speakerPosition)
      ..writeByte(12)
      ..write(obj.speakerGroup)
      ..writeByte(13)
      ..write(obj.speakerRole)
      ..writeByte(14)
      ..write(obj.speechID)
      ..writeByte(15)
      ..write(obj.issueID)
      ..writeByte(16)
      ..write(obj.sessionFrom)
      ..writeByte(17)
      ..write(obj.sessionTo)
      ..writeByte(18)
      ..write(obj.issueFrom)
      ..writeByte(19)
      ..write(obj.issueTo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchParamsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameOfHouseAdapter extends TypeAdapter<NameOfHouse> {
  @override
  final int typeId = 11;

  @override
  NameOfHouse read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return NameOfHouse.none;
      case 1:
        return NameOfHouse.houseOfRepresentatives;
      case 2:
        return NameOfHouse.houseOfCouncilors;
      case 3:
        return NameOfHouse.bothHouses;
      default:
        return NameOfHouse.none;
    }
  }

  @override
  void write(BinaryWriter writer, NameOfHouse obj) {
    switch (obj) {
      case NameOfHouse.none:
        writer.writeByte(0);
        break;
      case NameOfHouse.houseOfRepresentatives:
        writer.writeByte(1);
        break;
      case NameOfHouse.houseOfCouncilors:
        writer.writeByte(2);
        break;
      case NameOfHouse.bothHouses:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameOfHouseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SearchRangeAdapter extends TypeAdapter<SearchRange> {
  @override
  final int typeId = 12;

  @override
  SearchRange read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SearchRange.none;
      case 1:
        return SearchRange.begging;
      case 2:
        return SearchRange.text;
      case 3:
        return SearchRange.all;
      default:
        return SearchRange.none;
    }
  }

  @override
  void write(BinaryWriter writer, SearchRange obj) {
    switch (obj) {
      case SearchRange.none:
        writer.writeByte(0);
        break;
      case SearchRange.begging:
        writer.writeByte(1);
        break;
      case SearchRange.text:
        writer.writeByte(2);
        break;
      case SearchRange.all:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchRangeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpeakerRoleAdapter extends TypeAdapter<SpeakerRole> {
  @override
  final int typeId = 13;

  @override
  SpeakerRole read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SpeakerRole.none;
      case 1:
        return SpeakerRole.swornWitness;
      case 2:
        return SpeakerRole.unswornWitness;
      case 3:
        return SpeakerRole.publicSpeaker;
      default:
        return SpeakerRole.none;
    }
  }

  @override
  void write(BinaryWriter writer, SpeakerRole obj) {
    switch (obj) {
      case SpeakerRole.none:
        writer.writeByte(0);
        break;
      case SpeakerRole.swornWitness:
        writer.writeByte(1);
        break;
      case SpeakerRole.unswornWitness:
        writer.writeByte(2);
        break;
      case SpeakerRole.publicSpeaker:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeakerRoleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchParamsImpl _$$SearchParamsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SearchParamsImpl',
      json,
      ($checkedConvert) {
        final val = _$SearchParamsImpl(
          nameOfHouse: $checkedConvert(
              'nameOfHouse',
              (v) =>
                  $enumDecodeNullable(_$NameOfHouseEnumMap, v) ??
                  NameOfHouse.none),
          nameOfMeeting:
              $checkedConvert('nameOfMeeting', (v) => v as String? ?? ''),
          any: $checkedConvert('any', (v) => v as String? ?? ''),
          speaker: $checkedConvert('speaker', (v) => v as String? ?? ''),
          from: $checkedConvert(
              'from', (v) => v == null ? null : DateTime.parse(v as String)),
          until: $checkedConvert(
              'until', (v) => v == null ? null : DateTime.parse(v as String)),
          supplementAndAppendix: $checkedConvert(
              'supplementAndAppendix', (v) => v as bool? ?? false),
          contentsAndIndex:
              $checkedConvert('contentsAndIndex', (v) => v as bool? ?? false),
          searchRange: $checkedConvert(
              'searchRange',
              (v) =>
                  $enumDecodeNullable(_$SearchRangeEnumMap, v) ??
                  SearchRange.none),
          closing: $checkedConvert('closing', (v) => v as bool? ?? false),
          speechNumber: $checkedConvert('speechNumber', (v) => v as int?),
          speakerPosition:
              $checkedConvert('speakerPosition', (v) => v as String? ?? ''),
          speakerGroup:
              $checkedConvert('speakerGroup', (v) => v as String? ?? ''),
          speakerRole: $checkedConvert(
              'speakerRole',
              (v) =>
                  $enumDecodeNullable(_$SpeakerRoleEnumMap, v) ??
                  SpeakerRole.none),
          speechID: $checkedConvert('speechID', (v) => v as String? ?? ''),
          issueID: $checkedConvert('issueID', (v) => v as String? ?? ''),
          sessionFrom: $checkedConvert('sessionFrom', (v) => v as int?),
          sessionTo: $checkedConvert('sessionTo', (v) => v as int?),
          issueFrom: $checkedConvert('issueFrom', (v) => v as int?),
          issueTo: $checkedConvert('issueTo', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SearchParamsImplToJson(_$SearchParamsImpl instance) {
  final val = <String, dynamic>{
    'nameOfHouse': _$NameOfHouseEnumMap[instance.nameOfHouse]!,
    'nameOfMeeting': instance.nameOfMeeting,
    'any': instance.any,
    'speaker': instance.speaker,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('from', instance.from?.toIso8601String());
  writeNotNull('until', instance.until?.toIso8601String());
  val['supplementAndAppendix'] = instance.supplementAndAppendix;
  val['contentsAndIndex'] = instance.contentsAndIndex;
  val['searchRange'] = _$SearchRangeEnumMap[instance.searchRange]!;
  val['closing'] = instance.closing;
  writeNotNull('speechNumber', instance.speechNumber);
  val['speakerPosition'] = instance.speakerPosition;
  val['speakerGroup'] = instance.speakerGroup;
  val['speakerRole'] = _$SpeakerRoleEnumMap[instance.speakerRole]!;
  val['speechID'] = instance.speechID;
  val['issueID'] = instance.issueID;
  writeNotNull('sessionFrom', instance.sessionFrom);
  writeNotNull('sessionTo', instance.sessionTo);
  writeNotNull('issueFrom', instance.issueFrom);
  writeNotNull('issueTo', instance.issueTo);
  return val;
}

const _$NameOfHouseEnumMap = {
  NameOfHouse.none: 'none',
  NameOfHouse.houseOfRepresentatives: 'houseOfRepresentatives',
  NameOfHouse.houseOfCouncilors: 'houseOfCouncilors',
  NameOfHouse.bothHouses: 'bothHouses',
};

const _$SearchRangeEnumMap = {
  SearchRange.none: 'none',
  SearchRange.begging: 'begging',
  SearchRange.text: 'text',
  SearchRange.all: 'all',
};

const _$SpeakerRoleEnumMap = {
  SpeakerRole.none: 'none',
  SpeakerRole.swornWitness: 'swornWitness',
  SpeakerRole.unswornWitness: 'unswornWitness',
  SpeakerRole.publicSpeaker: 'publicSpeaker',
};
