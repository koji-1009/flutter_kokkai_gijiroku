import 'package:flutter_kokkai_gijiroku/model/entity/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeStateProvider = StateProvider(
  (_) => const HomeState(),
);
