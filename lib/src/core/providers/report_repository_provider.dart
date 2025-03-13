import 'package:a_and_i_report_web_server/src/data/reports/repository/report_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final reportRepositoryProvider =
    Provider<ReportRepository>((ref) => ReportRepository(Dio()));
