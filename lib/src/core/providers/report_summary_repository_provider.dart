import 'package:a_and_i_report_web_server/src/core/constants/api_url.dart';
import 'package:a_and_i_report_web_server/src/feature/home/data/repositories/report_summary_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final reportSummaryRepositoryProvider =
    Provider((Ref ref) => ReportSummaryRepository(Dio(), baseUrl: baseUrl));
