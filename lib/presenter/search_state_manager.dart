import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_state.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchStateProvider =
    StateNotifierProvider<SearchStateManager, SearchState>(
  (_) => SearchStateManager(),
);

class SearchStateManager extends StateNotifier<SearchState> {
  SearchStateManager() : super(const SearchState());

  void updateMode(SearchMode? value) {
    state = state.copyWith(
      mode: value ?? SearchMode.speech,
    );
  }

  void updateFrom(DateTime? value) {
    state = state.copyWith(
      from: value,
    );
  }

  void updateUntil(DateTime? value) {
    state = state.copyWith(
      until: value,
    );
  }

  void updateAny(String value) {
    state = state.copyWith(
      any: value,
    );
  }

  void updateSearchRange(SearchRange? value) {
    state = state.copyWith(
      searchRange: value ?? SearchRange.none,
    );
  }

  void updateSupplementAndAppendix(bool value) {
    state = state.copyWith(
      supplementAndAppendix: value,
    );
  }

  void updateContentsAndIndex(bool value) {
    state = state.copyWith(
      contentsAndIndex: value,
    );
  }

  void updateClosing(bool value) {
    state = state.copyWith(
      closing: value,
    );
  }

  void updateNameOfMeeting(String value) {
    state = state.copyWith(
      nameOfMeeting: value,
    );
  }

  void updateNameOfHouse(NameOfHouse? value) {
    state = state.copyWith(
      nameOfHouse: value ?? NameOfHouse.none,
    );
  }

  void updateSpeaker(String value) {
    state = state.copyWith(
      speaker: value,
    );
  }

  void updateSpeakerPosition(String value) {
    state = state.copyWith(
      speakerPosition: value,
    );
  }

  void updateSpeakerGroup(String value) {
    state = state.copyWith(
      speakerGroup: value,
    );
  }

  void updateSpeakerRole(SpeakerRole? value) {
    state = state.copyWith(
      speakerRole: value ?? SpeakerRole.none,
    );
  }
}
