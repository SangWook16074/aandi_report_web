import 'package:a_and_i_report_web_server/src/feature/promotion/domain/usecases/get_faq_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_faq_list_usecase_provider.g.dart';

@riverpod
GetFaqList getFaqListUsecase(Ref ref) {
  return GetFaqListImpl();
}
