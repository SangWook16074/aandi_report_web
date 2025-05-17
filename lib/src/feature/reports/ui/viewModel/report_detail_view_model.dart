import 'package:a_and_i_report_web_server/src/feature/reports/data/repositories/report_repository.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_event.dart';
import 'package:a_and_i_report_web_server/src/feature/reports/ui/viewModel/report_detail_state.dart';
import 'package:flutter/material.dart';

class ReportDetailViewModel extends ChangeNotifier {
  final ReportRepository reportRepository;

  ReportDetailViewModel(this.reportRepository);

  ReportDetailState _state = LoadingState();

  ReportDetailState get state => _state;

  void onEvent(ReportDetailEvent event) async {
    switch (event) {
      case ReadReportDatail():
        try {
          _state = LoadedState(
              report: await reportRepository.getReportDetailById(event.id));
        } on Exception catch (e) {
          _state = ErrorState(errorMsg: e.toString());
        }
    }
    notifyListeners();
  }
}
