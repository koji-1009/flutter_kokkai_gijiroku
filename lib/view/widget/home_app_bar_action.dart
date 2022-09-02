import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/about_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/cache_clear_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

enum _HomeAction {
  cache,
  license,
  github,
  ndl,
  about,
}

class HomeAppBarAction extends StatelessWidget {
  const HomeAppBarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_HomeAction>(
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: _HomeAction.cache,
          child: Text('検索キャッシュ削除'),
        ),
        PopupMenuItem(
          value: _HomeAction.license,
          child: Text('ライセンス'),
        ),
        PopupMenuItem(
          value: _HomeAction.github,
          child: Text('GitHub'),
        ),
        PopupMenuItem(
          value: _HomeAction.ndl,
          child: Text('検索用APIの仕様'),
        ),
        PopupMenuItem(
          value: _HomeAction.about,
          child: Text('このサイトについて'),
        ),
      ],
      onSelected: (value) async {
        switch (value) {
          case _HomeAction.cache:
            showDialog(
              context: context,
              builder: (context) => const CacheClearDialog(),
            );
            break;
          case _HomeAction.license:
            showLicensePage(
              context: context,
            );
            break;
          case _HomeAction.github:
            await launchUrlString(
              'https://github.com/koji-1009/flutter_kokkai_gijiroku',
            );
            break;
          case _HomeAction.ndl:
            await launchUrlString(
              'https://kokkai.ndl.go.jp/api.html',
            );
            break;
          case _HomeAction.about:
            context.pushNamed(
              AboutScreen.screenName,
            );
            break;
        }
      },
    );
  }
}
