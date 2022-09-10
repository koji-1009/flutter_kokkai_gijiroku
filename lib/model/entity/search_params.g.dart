// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchParams _$$_SearchParamsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SearchParams',
      json,
      ($checkedConvert) {
        final val = _$_SearchParams(
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

Map<String, dynamic> _$$_SearchParamsToJson(_$_SearchParams instance) {
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
