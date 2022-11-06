import 'package:flutter/foundation.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchMode.speech) SearchMode mode,
    @Default(NameOfHouse.none) NameOfHouse nameOfHouse,
    @Default('') String nameOfMeeting,
    @Default('') String any,
    @Default('') String speaker,
    DateTime? from,
    DateTime? until,
    @Default(false) bool supplementAndAppendix,
    @Default(false) bool contentsAndIndex,
    @Default(SearchRange.none) SearchRange searchRange,
    @Default(false) bool closing,
    int? speechNumber,
    @Default('') String speakerPosition,
    @Default('') String speakerGroup,
    @Default(SpeakerRole.none) SpeakerRole speakerRole,
    @Default('') String speechID,
    @Default('') String issueID,
    int? sessionFrom,
    int? sessionTo,
    int? issueFrom,
    int? issueTo,
  }) = _HomeState;
}

extension SearchStateExt on SearchState {
  SearchParams get simpleParams => SearchParams(
        any: any,
      );

  SearchParams get fullParams => SearchParams(
        nameOfHouse: nameOfHouse,
        nameOfMeeting: nameOfMeeting,
        any: any,
        speaker: speaker,
        from: from,
        until: until,
        supplementAndAppendix: supplementAndAppendix,
        contentsAndIndex: contentsAndIndex,
        searchRange: searchRange,
        closing: closing,
        speechNumber: speechNumber,
        speakerPosition: speakerPosition,
        speakerGroup: speakerGroup,
        speakerRole: speakerRole,
        speechID: speechID,
        issueID: issueID,
        sessionFrom: sessionFrom,
        sessionTo: sessionTo,
        issueFrom: issueFrom,
        issueTo: issueTo,
      );
}
