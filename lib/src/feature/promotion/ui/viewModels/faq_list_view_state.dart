import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_item.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_list_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_list_view_state.freezed.dart';

@freezed
abstract class FaqListViewState with _$FaqListViewState {
  const factory FaqListViewState({
    @Default([]) List<FaqItem> items,
    @Default(FaqListFilter.all) FaqListFilter filter,
  }) = _FaqListViewState;
}

extension FaqListViewStateX on FaqListViewState {
  List<FaqItem> get filteredItems {
    return filter.applyAll(items).toList();
  }
}
