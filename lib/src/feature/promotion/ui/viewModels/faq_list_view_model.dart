import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_list_filter.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/domain/providers/get_faq_list_usecase_provider.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_event.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'faq_list_view_model.g.dart';

@riverpod
class FaqListViewModel extends _$FaqListViewModel {
  @override
  FaqListViewState build() {
    _init();
    return const FaqListViewState();
  }

  Future<void> _init() async {
    final usecase = ref.read(getFaqListUsecaseProvider);
    final items = await usecase.call();
    state = state.copyWith(items: items);
  }

  void add(FaqListViewEvent event) {
    onEvent(event);
  }

  void onEvent(FaqListViewEvent event) {
    switch (event) {
      case FaqListViewFilterChanged():
        final newFilter = event.filter;
        _onFilterChanged(newFilter);
    }
  }

  void _onFilterChanged(FaqListFilter newFilter) {
    state = state.copyWith(filter: newFilter);
  }
}
