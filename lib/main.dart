import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/app.dart';
import 'package:flutter_kokkai_gijiroku/model/hive_repository.dart';
import 'package:flutter_kokkai_gijiroku/ofl.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    yield const LicenseEntryWithLineBreaks(['google_fonts'], mPlus1License);
  });

  await Hive.initFlutter();
  final hiveBox = await Hive.openBox<Map<String, dynamic>>('cache');

  runApp(
    ProviderScope(
      overrides: [
        hiveProvider.overrideWithValue(hiveBox),
      ],
      child: const App(),
    ),
  );
}
