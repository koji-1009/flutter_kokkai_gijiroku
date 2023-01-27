import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/meeting_record.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/model/source/data_source_meeting_detail.dart';
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
import 'package:sticky_headers/sticky_headers.dart';

class SearchMeetingDetailScreen extends HookConsumerWidget {
  const SearchMeetingDetailScreen({
    super.key,
    required this.params,
  });

  static String screenName = 'searchMeetingDetail';

  final SearchParams params;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;

    final dataSource = ref.watch(
      dataSourceMeetingDetailProvider(
        params: params,
      ),
    );
    final numberOfRecords = ref
        .watch(
          meetingDetailInfoProvider(
            params: params,
          ),
        )
        .maybeWhen(
          data: (data) => '$data',
          orElse: () => '',
        );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          SearchMode.meetingDetail.value,
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
          child: PagingList<int, MeetingRecordDetail>(
            primary: true,
            dataSource: dataSource,
            builder: (context, element, index) => StickyHeader(
              header: Container(
                color: Theme.of(context).colorScheme.surface,
                padding: EdgeInsets.symmetric(
                  horizontal: margin,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(element.nameOfHouse),
                    Text(element.nameOfMeeting),
                    Text(element.date.yMMMEd),
                  ],
                ),
              ),
              content: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  final record = element.speechRecord[i];

                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: margin,
                    ),
                    title: Text(record.speaker),
                    subtitle: Text(record.speechID),
                    onTap: () {
                      context.pushNamed(
                        SpeechDetailScreen.screenName,
                        params: {
                          'speechID': record.speechID,
                        },
                      );
                    },
                  );
                },
                itemCount: element.speechRecord.length,
              ),
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
