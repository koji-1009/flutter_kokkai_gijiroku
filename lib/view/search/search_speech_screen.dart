import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/speech_record.dart';
import 'package:flutter_kokkai_gijiroku/model/source/data_source_speech.dart';
import 'package:flutter_kokkai_gijiroku/presenter/api_presenter.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/status/speech_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/bottom_sheet_content.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/bottom_sheet_divider.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/bottom_sheet_options.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:over_bottom_sheet/over_bottom_sheet.dart';
import 'package:paging_view/paging_view.dart';

class SearchSpeechScreen extends ConsumerWidget {
  const SearchSpeechScreen({
    super.key,
    required this.params,
  });

  static String screenName = 'searchSpeech';

  final SearchParams params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;
    final dataSource = ref.watch(dataSourceSpeechProvider(params));
    final numberOfRecords = ref.watch(speechInfoProvider(params)).maybeWhen(
          data: (data) => '$data',
          orElse: () => '',
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          SearchMode.speech.value,
        ),
      ),
      body: SafeArea(
        child: OverBottomSheet(
          sizeOption: bottomSheetSizeOption,
          header: const BottomSheetDivider(),
          content: SearchResultBottomContent(
            numberOfRecords: numberOfRecords,
            params: params,
          ),
          child: PagingList<int, SpeechRecord>(
            dataSource: dataSource,
            builder: (context, element, index) => ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: margin,
                vertical: 8,
              ),
              title: Text(
                '${element.speaker}, '
                '${element.nameOfMeeting}, '
                '${element.date.yMMMEd}',
              ),
              subtitle: Text(
                element.speech,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                context.pushNamed(
                  SpeechDetailScreen.screenName,
                  params: {
                    'speechID': element.speechID,
                  },
                );
              },
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text('詳しく見る'),
                    children: [
                      SimpleDialogOption(
                        child: const Text('この会議で絞り込み'),
                        onPressed: () {
                          context.pushNamed(
                            SearchSpeechScreen.screenName,
                            queryParams: {
                              'q': params
                                  .copyWith(
                                    issueID: element.issueID,
                                  )
                                  .uriQuery,
                            },
                          );

                          Navigator.of(context).pop();
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text('発言者で絞り込み'),
                        onPressed: () {
                          context.pushNamed(
                            SearchSpeechScreen.screenName,
                            queryParams: {
                              'q': params
                                  .copyWith(
                                    speaker: element.speaker,
                                  )
                                  .uriQuery,
                            },
                          );

                          Navigator.of(context).pop();
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text('所属政党で絞り込み'),
                        onPressed: () {
                          context.pushNamed(
                            SearchSpeechScreen.screenName,
                            queryParams: {
                              'q': params
                                  .copyWith(
                                    speakerGroup: element.speakerGroup,
                                  )
                                  .uriQuery,
                            },
                          );

                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
            initialLoadingWidget: const Center(
              child: CircularProgressIndicator(),
            ),
            appendLoadingWidget: const Center(
              child: CircularProgressIndicator(),
            ),
            errorBuilder: (context, e) => Center(
              child: Text('$e'),
            ),
            emptyWidget: const Center(
              child: Text('検索結果が見つかりませんでした。'),
            ),
          ),
        ),
      ),
    );
  }
}
