import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/cache_clear_dialog.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

enum _HomeAction {
  cache,
  github,
  ndl,
  about,
}

class HomeAppBarAction extends StatelessWidget {
  const HomeAppBarAction({super.key});

  String get _repositoryUrl =>
      'https://github.com/koji-1009/flutter_kokkai_gijiroku';

  String get _ndlApiDocUrl => 'https://kokkai.ndl.go.jp/api.html';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_HomeAction>(
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: _HomeAction.cache,
          child: Text('検索キャッシュ削除'),
        ),
        PopupMenuItem(
          value: _HomeAction.github,
          child: Text('GitHub repository'),
        ),
        PopupMenuItem(
          value: _HomeAction.ndl,
          child: Text('検索用APIの仕様について'),
        ),
        PopupMenuItem(
          value: _HomeAction.about,
          child: Text('アプリケーションについて'),
        ),
      ],
      onSelected: (value) async {
        switch (value) {
          case _HomeAction.cache:
            await showDialog(
              context: context,
              builder: (context) => const CacheClearDialog(),
            );
          case _HomeAction.github:
            await launchUrlString(_repositoryUrl);
          case _HomeAction.ndl:
            await launchUrlString(_ndlApiDocUrl);
          case _HomeAction.about:
            if (!context.mounted) {
              return;
            }

            showAboutDialog(
              context: context,
              children: [
                const Text(
                  '国立国会図書館が提供する、国会会議録検索システムを利用しています。',
                ),
                Linkify(
                  text: _ndlApiDocUrl,
                  onOpen: (link) => launchUrlString(link.url),
                ),
                const Divider(),
                Text(
                  '注意',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Text(
                  '本サイトを利用した成果を公表する、'
                  'もしくは営利目的で利用する場合には、'
                  '国会会議録検索システム　検索用APIの仕様にある'
                  '「4. 利用条件・免責事項」をご確認ください。',
                ),
                const Gap(16),
                const Text(
                  'アプリケーションへの機能要望などは、GitHub Issueまでお寄せください。',
                ),
                Linkify(
                  text: '$_repositoryUrl/issues',
                  onOpen: (link) => launchUrlString(link.url),
                ),
              ],
            );
        }
      },
    );
  }
}
