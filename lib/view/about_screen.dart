import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static String screenName = 'about';

  @override
  Widget build(BuildContext context) {
    final margin = MediaQuery.of(context).breakpointMargin;

    return Scaffold(
      appBar: AppBar(
        title: const Text('このサイトについて'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: margin,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'このサイトについて',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('国立国会図書館が提供する、国会会議録検索システムを利用しています。'),
              Linkify(
                text: 'https://kokkai.ndl.go.jp/api.html',
                onOpen: (link) => launch(link.url),
              ),
              const Divider(),
              Text(
                '注意',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                    ),
              ),
              const Text('本サイトを利用した成果を公表する、'
                  'もしくは営利目的で利用する場合には、'
                  '国会会議録検索システム　検索用APIの仕様にある'
                  '「4. 利用条件・免責事項」をご確認ください。'),
              const SizedBox(
                height: 16,
              ),
              const Text('当アプリケーションへの機能追加要望などは、'
                  'GitHubのIssueまでお寄せください。'),
              Linkify(
                text:
                    'https://github.com/koji-1009/flutter_kokkai_gijiroku/issues',
                onOpen: (link) => launch(link.url),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
