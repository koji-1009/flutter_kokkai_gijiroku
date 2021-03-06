import 'package:breakpoints_mq/breakpoints_mq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/utils/date_formatter.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_detail_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_meeting_summary_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search/search_speech_screen.dart';
import 'package:flutter_kokkai_gijiroku/view/search_mode.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/home_app_bar_action.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).breakpointMargin;

    final mode = useState(SearchMode.speech);
    final searchParam = useState(const SearchParams());

    final fromDateController = useTextEditingController();
    final untilDateController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('議事録検索'),
        actions: const [
          HomeAppBarAction(),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 80,
          left: margin,
          right: margin,
        ),
        children: [
          Row(
            children: [
              const Text('検索対象'),
              const Spacer(),
              DropdownButton<SearchMode>(
                value: mode.value,
                items: SearchMode.values
                    .map(
                      (e) => DropdownMenuItem<SearchMode>(
                        value: e,
                        child: Text(e.value),
                      ),
                    )
                    .toList(growable: false),
                onChanged: (value) {
                  mode.value = value ?? SearchMode.meetingDetail;
                },
              ),
            ],
          ),
          const Divider(),
          TextField(
            controller: fromDateController,
            readOnly: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '検索開始日(開会日付)',
            ),
            onTap: () async {
              final now = DateTime.now();
              final selectDate = await showDatePicker(
                context: context,
                initialDate: DateTime.utc(
                  2010,
                  1,
                  1,
                ),
                firstDate: DateTime.utc(1880, 1, 1),
                lastDate: now,
              );

              searchParam.value = searchParam.value.copyWith(
                from: selectDate,
              );
              fromDateController.text =
                  selectDate != null ? selectDate.yMMMMEd : '';
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: untilDateController,
            readOnly: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '検索終了日(開会日付)',
            ),
            onTap: () async {
              final now = DateTime.now();
              final selectDate = await showDatePicker(
                context: context,
                initialDate: now,
                firstDate: DateTime.utc(1881, 1, 1),
                lastDate: now,
              );

              searchParam.value = searchParam.value.copyWith(
                until: selectDate,
              );
              untilDateController.text =
                  selectDate != null ? selectDate.yMMMMEd : '';
            },
          ),
          const Divider(),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '検索語',
            ),
            onChanged: (value) {
              searchParam.value = searchParam.value.copyWith(
                any: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Text('検索対象'),
              const Spacer(),
              DropdownButton<SearchRange>(
                value: searchParam.value.searchRange,
                items: SearchRange.values
                    .map(
                      (e) => DropdownMenuItem<SearchRange>(
                        value: e,
                        child: Text(e.value),
                      ),
                    )
                    .toList(growable: false),
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    searchRange: value ?? SearchRange.none,
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Text('追録・附録指定'),
              const Spacer(),
              Switch(
                value: searchParam.value.supplementAndAppendix,
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    supplementAndAppendix: value,
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('目次・索引指定'),
              const Spacer(),
              Switch(
                value: searchParam.value.contentsAndIndex,
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    contentsAndIndex: value,
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              const Text('閉会中指定'),
              const Spacer(),
              Switch(
                value: searchParam.value.closing,
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    closing: value,
                  );
                },
              ),
            ],
          ),
          const Divider(),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '会議名',
            ),
            onChanged: (value) {
              searchParam.value = searchParam.value.copyWith(
                nameOfMeeting: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Text('院名'),
              const Spacer(),
              DropdownButton<NameOfHouse>(
                value: searchParam.value.nameOfHouse,
                items: NameOfHouse.values
                    .map(
                      (e) => DropdownMenuItem<NameOfHouse>(
                        value: e,
                        child: Text(e.value),
                      ),
                    )
                    .toList(growable: false),
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    nameOfHouse: value ?? NameOfHouse.none,
                  );
                },
              ),
            ],
          ),
          const Divider(),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者名',
            ),
            onChanged: (value) {
              searchParam.value = searchParam.value.copyWith(
                speaker: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者肩書き',
            ),
            onChanged: (value) {
              searchParam.value = searchParam.value.copyWith(
                speakerPosition: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '発言者所属会派',
            ),
            onChanged: (value) {
              searchParam.value = searchParam.value.copyWith(
                speakerGroup: value,
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Text('発言者役割'),
              const Spacer(),
              DropdownButton<SpeakerRole>(
                value: searchParam.value.speakerRole,
                items: SpeakerRole.values
                    .map(
                      (e) => DropdownMenuItem<SpeakerRole>(
                        value: e,
                        child: Text(e.value),
                      ),
                    )
                    .toList(growable: false),
                onChanged: (value) {
                  searchParam.value = searchParam.value.copyWith(
                    speakerRole: value ?? SpeakerRole.none,
                  );
                },
              ),
            ],
          ),
          const Divider(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('検索'),
        icon: const Icon(Icons.search_outlined),
        onPressed: () {
          final param = searchParam.value;
          if (param.from != null &&
              param.until != null &&
              param.from!.isAfter(param.until!)) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('日付の指定が不正です'),
              ),
            );
            return;
          }
          if (param.any.isEmpty &&
              param.speaker.isEmpty &&
              param.nameOfMeeting.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('検索語/会議名/発言者名のいずれかを入力してください'),
              ),
            );
            return;
          }

          switch (mode.value) {
            case SearchMode.meetingDetail:
              context.pushNamed(
                SearchMeetingDetailScreen.screenName,
                queryParams: searchParam.value.query,
              );
              break;
            case SearchMode.meetingSummary:
              context.pushNamed(
                SearchMeetingSummaryScreen.screenName,
                queryParams: searchParam.value.query,
              );
              break;
            case SearchMode.speech:
              context.pushNamed(
                SearchSpeechScreen.screenName,
                queryParams: searchParam.value.query,
              );
              break;
          }
        },
      ),
    );
  }
}
