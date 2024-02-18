import 'package:flutter/material.dart';
import 'package:flutter_kokkai_gijiroku/model/entity/search_params.dart';
import 'package:flutter_kokkai_gijiroku/view/widget/search_params_list.dart';
import 'package:gap/gap.dart';

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
          const Gap(8),
          SearchParamsList(
            params: params,
          ),
        ],
      ),
    );
  }
}
