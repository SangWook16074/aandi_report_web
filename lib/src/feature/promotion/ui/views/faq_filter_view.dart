import 'package:a_and_i_report_web_server/src/core/widgets/responsive_layout.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_list_filter.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_event.dart';
import 'package:a_and_i_report_web_server/src/feature/promotion/ui/viewModels/faq_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FaqFilterView extends ConsumerWidget {
  const FaqFilterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faqListViewState = ref.watch(faqListViewModelProvider);
    final faqListViewModel = ref.read(faqListViewModelProvider.notifier);
    final isMobile = ResponsiveLayout.isMobile(context);
    return Row(
      children: FaqListFilter.values.map((filter) {
        final isSelected = filter == faqListViewState.filter;
        return InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            faqListViewModel.add(FaqListViewFilterChanged(filter: filter));
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(horizontal: isMobile ? 4.0 : 8.0),
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 15 : 20.0, vertical: 4.0),
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xffffffff) : Colors.white10,
              borderRadius: BorderRadius.circular(999),
            ),
            alignment: Alignment.center,
            child: Text(
              filter.label,
              style: TextStyle(
                  height: -1,
                  fontSize: isMobile ? 15 : 18,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? Color(0xff000000) : Colors.white54),
            ),
          ),
        );
      }).toList(),
    );
  }
}
