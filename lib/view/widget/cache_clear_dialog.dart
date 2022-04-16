import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/presenter/cache_presenter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CacheClearDialog extends ConsumerStatefulWidget {
  const CacheClearDialog({Key? key}) : super(key: key);

  @override
  ConsumerState<CacheClearDialog> createState() => _CacheClearDialogState();
}

class _CacheClearDialogState extends ConsumerState<CacheClearDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('検索キャッシュの削除'),
      content: const SingleChildScrollView(
        child: Text('''
検索終了日を前日までに設定した場合に、データのキャッシュを作成します。
このキャッシュを削除しますか？
キャッシュを削除することにより、最新のデータを取得し直すことができるようになります。
'''),
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await ref.read(cachePresenterProvider).clear();

            if (!mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('キャッシュを削除しました'),
              ),
            );
            Navigator.of(context).pop();
          },
          child: const Text('削除'),
        ),
      ],
    );
  }
}
