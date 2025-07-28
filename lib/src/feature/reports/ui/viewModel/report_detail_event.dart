import 'package:equatable/equatable.dart';

sealed class ReportDetailEvent extends Equatable {}

final class ReadReportDatail extends ReportDetailEvent {
  final String id;

  ReadReportDatail({required this.id});
  @override
  List<Object?> get props => [id];
}
