import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:over_bottom_sheet/over_bottom_sheet.dart';

/// Creates and disposes a [OverBottomSheetController].
///
/// See also:
/// - [OverBottomSheetController]
OverBottomSheetController useOverBottomSheetController({
  double ratio = 1.0,
  Duration tick = const Duration(
    milliseconds: 8,
  ),
  double step = 0.05,
  List<Object?>? keys,
}) {
  return use(
    _OverBottomSheetControllerHook(
      ratio: ratio,
      tick: tick,
      step: step,
      keys: keys,
    ),
  );
}

class _OverBottomSheetControllerHook extends Hook<OverBottomSheetController> {
  const _OverBottomSheetControllerHook({
    super.keys,
    required this.ratio,
    required this.tick,
    required this.step,
  });

  final double ratio;
  final Duration tick;
  final double step;

  @override
  HookState<OverBottomSheetController, Hook<OverBottomSheetController>>
      createState() => _OverBottomSheetControllerHookState();
}

class _OverBottomSheetControllerHookState extends HookState<
    OverBottomSheetController, _OverBottomSheetControllerHook> {
  late final controller = OverBottomSheetController(
    ratio: hook.ratio,
    tick: hook.tick,
    step: hook.step,
  );

  @override
  OverBottomSheetController build(BuildContext context) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'useOverBottomSheetController';
}
