import 'package:a_and_i_report_web_server/src/feature/reports/data/repositories/report_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final reportRepositoryProvider = Provider<ReportRepository>(
    (ref) => ReportRepository(Dio(), baseUrl: dotenv.get("BASE_URL")));
