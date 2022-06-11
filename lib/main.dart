import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/app.dart';
import 'package:flutter_kokkai_gijiroku/ofl.dart';
import 'package:http_hive_cache/http_hive_cache.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    yield const LicenseEntryWithLineBreaks(['google_fonts'], mPlus1License);
  });
  await HttpHiveCache.init();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
