import 'package:a_and_i_report_web_server/src/data/reports/repository/report_repository.dart';
import 'package:a_and_i_report_web_server/src/ui/reports/model/report_list_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// 과제 목록 뷰 모델
class ReportListViewModel with ChangeNotifier {
  final ReportRepository reportRepository = ReportRepository(Dio());

  // 생성 시 목록 패치
  ReportListViewModel() {
    _fetchData();
  }

  var _state = const ReportListState();

  ReportListState get state => _state;

  void _fetchData() async {
    _state = _state.copyWith(reports: await reportRepository.getReports());
    notifyListeners();
  }
}
