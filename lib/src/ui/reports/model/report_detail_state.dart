import 'package:a_and_i_report_web_server/src/data/reports/entity/report.dart';
import 'package:equatable/equatable.dart';

sealed class ReportDetailState extends Equatable {}

final class LoadingState extends ReportDetailState {
  @override
  List<Object?> get props => [];
}

final class ErrorState extends ReportDetailState {
  @override
  List<Object?> get props => [];
}

final class LoadedState extends ReportDetailState {
  final Report report;

  LoadedState({required this.report});

  @override
  List<Object?> get props => [report];
}
