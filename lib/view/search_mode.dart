enum SearchMode {
  /// 会議単位簡易出力
  meetingDetail,
  /// 会議単位簡易出力
  meetingSummary,
  /// 発言単位出力
  speech,
}

extension SearchModeExt on SearchMode {
  String get value {
    switch (this) {
      case SearchMode.meetingDetail:
        return '会議単位出力';
      case SearchMode.meetingSummary:
        return '会議単位簡易出力';
      case SearchMode.speech:
        return '発言単位出力';
    }
  }
}
