import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';

class SearchResultBottomContent extends StatelessWidget {
  const SearchResultBottomContent({
    super.key,
    required this.numberOfRecords,
    required this.params,
  });

  final String numberOfRecords;
  final SearchParams params;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '検索結果',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          Text('総結果件数: $numberOfRecords'),
          const SizedBox(
            height: 8,
          ),
          Text(
            '検索条件',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          if (params.any.isNotEmpty) Text('ワード: ${params.any}'),
          if (params.nameOfHouse.value.isNotEmpty)
            Text('院名: ${params.nameOfHouse.value}'),
          if (params.nameOfMeeting.isNotEmpty)
            Text('会議名: ${params.nameOfMeeting}'),
          if (params.speaker.isNotEmpty) Text('発言者名: ${params.speaker}'),
          if (params.from != null) Text('開始日: ${params.from}'),
          if (params.until != null) Text('終了日: ${params.until}'),
          if (params.supplementAndAppendix) const Text('追録・附録指定'),
          if (params.contentsAndIndex) const Text('目次・索引指定'),
          if (params.searchRange != SearchRange.none)
            Text('議事冒頭・本文指定: ${params.searchRange.value}'),
          if (params.closing) const Text('閉会中指定'),
          if (params.speechNumber != null) Text('発言番号: ${params.speechNumber}'),
          if (params.speakerPosition.isNotEmpty)
            Text('発言者肩書き: ${params.speakerPosition}'),
          if (params.speakerGroup.isNotEmpty)
            Text('発言者所属会派: ${params.speakerGroup}'),
          if (params.speakerRole != SpeakerRole.none)
            Text('発言者役割: ${params.speakerRole.value}'),
          if (params.speechID.isNotEmpty) Text('発言ID: ${params.speechID}'),
          if (params.issueID.isNotEmpty) Text('会議録ID: ${params.issueID}'),
          if (params.sessionFrom != null)
            Text('国会回次From: ${params.sessionFrom}'),
          if (params.sessionTo != null) Text('国会回次To: ${params.sessionTo}'),
          if (params.issueFrom != null) Text('号数From: ${params.issueFrom}'),
          if (params.issueTo != null) Text('号数To: ${params.issueTo}'),
        ],
      ),
    );
  }
}
