import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/memo_result.dart';

class MemoEditDialog extends HookWidget {
  const MemoEditDialog({
    super.key,
    required this.memo,
  });

  final String memo;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController.call(
      text: memo,
    );

    return AlertDialog(
      title: const Text('メモの編集'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.multiline,
        minLines: 1,
        maxLines: 999,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(
              const MemoResult.cancel(),
            );
          },
          child: const Text('キャンセル'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(
              MemoResult(
                memo: controller.text,
              ),
            );
          },
          child: const Text('保存'),
        ),
      ],
    );
  }
}
