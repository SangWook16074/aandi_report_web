import 'package:a_and_i_report_web_server/src/data/reports/repository/report_repository.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/model/report_list_state.dart';
import 'package:flutter/material.dart';

// 과제 목록 뷰 모델
class ReportListViewModel with ChangeNotifier {
  final ReportRepository reportRepository;

  // 생성 시 목록 패치
  ReportListViewModel(this.reportRepository) {
    _fetchData();
  }

  var _state = const ReportListState();

  ReportListState get state => _state;

  void _fetchData() async {
    try {
      _state = _state.copyWith(reports: await reportRepository.getReports());
    } on Exception catch (e) {
      _state = _state.copyWith(errorMsg: e.toString());
    }
    notifyListeners();
  }
}
