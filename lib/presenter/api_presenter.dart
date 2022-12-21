import 'package:flutter_kokkai_gijiroku/model/api_repository.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final speechDetailProvider =
    FutureProvider.family<SpeechRecordResponse, String>(
  (ref, speechID) => ref.watch(apiRepositoryProvider).getSpeechBySpeechId(
        speechID: speechID,
      ),
);
