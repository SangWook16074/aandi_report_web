import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_list_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_list_view_event.freezed.dart';

@freezed
sealed class FaqListViewEvent with _$FaqListViewEvent {
  const factory FaqListViewEvent.filterChanged({
    required FaqListFilter filter,
  }) = FaqListViewFilterChanged;
}
