import 'package:flutter/material.dart';
import 'package:http_hive_cache/http_hive_cache.dart';

class CacheClearDialog extends StatelessWidget {
  const CacheClearDialog({super.key});

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
            await HttpHiveCache.clearAll();

            if (!context.mounted) return;
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
