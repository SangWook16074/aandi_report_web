import 'package:a_and_i_report_web_server/src/feature/home/ui/viewModels/report_list_state.dart';
import 'package:flutter/material.dart';

import '../../data/repositories/report_summary_repository.dart';

// 과제 목록 뷰 모델
class ReportListViewModel with ChangeNotifier {
  final ReportSummaryRepository reportSummaryRepository;

  // 생성 시 목록 패치
  ReportListViewModel(this.reportSummaryRepository) {
    _fetchData();
  }

  var _state = const ReportListState();

  ReportListState get state => _state;

  void _fetchData() async {
    try {
      _state = _state.copyWith(
          reports: await reportSummaryRepository.getReportSummaries());
    } on Exception catch (e) {
      _state = _state.copyWith(errorMsg: e.toString());
    }
    notifyListeners();
  }
}
