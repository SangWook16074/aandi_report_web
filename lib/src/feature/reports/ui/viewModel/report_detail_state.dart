import 'package:a_and_i_report_web_server/src/feature/reports/data/entities/report.dart';
import 'package:equatable/equatable.dart';

sealed class ReportDetailState extends Equatable {}

final class LoadingState extends ReportDetailState {
  @override
  List<Object?> get props => [];
}

final class ErrorState extends ReportDetailState {
  final String errorMsg;
  ErrorState({required this.errorMsg});
  @override
  List<Object?> get props => [
        errorMsg,
      ];
}

final class LoadedState extends ReportDetailState {
  final Report report;

  LoadedState({required this.report});

  @override
  List<Object?> get props => [report];
}
