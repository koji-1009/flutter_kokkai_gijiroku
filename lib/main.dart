import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/app.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/hive/search_history.dart';
import 'package:flutter_kokkai_gijiroku/ofl.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_hive_cache/http_hive_cache.dart';

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    yield const LicenseEntryWithLineBreaks(['google_fonts'], mPlus1License);
  });

  await Hive.initFlutter();
  await HttpHiveCache.init();

  Hive
    ..registerAdapter(SearchHistoryAdapter())
    ..registerAdapter(SearchParamsAdapter())
    ..registerAdapter(NameOfHouseAdapter())
    ..registerAdapter(SearchRangeAdapter())
    ..registerAdapter(SpeakerRoleAdapter());
  final searchHistoryBox = await Hive.openBox<SearchHistory>('history');

  runApp(
    ProviderScope(
      overrides: [
        searchHistoryBoxProvider.overrideWithValue(
          searchHistoryBox,
        ),
      ],
      child: const App(),
    ),
  );
}
