import 'package:a_and_i_report_web_server/src/feature/reports/data/repositories/report_repository.dart';
import 'package:a_and_i_report_web_server/src/core/constants/api_url.dart';
import 'package:a_and_i_report_web_server/src/core/providers/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_repository_provider.g.dart';

@riverpod
ReportRepository reportRepository(Ref ref) {
  return ReportRepository(ref.read(dioProvider), baseUrl: baseUrl);
}
