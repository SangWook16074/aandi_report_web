import 'package:a_and_i_report_web_server/src/feature/promotion/domain/entities/faq_item.dart';

enum FaqListFilter {
  all("전체"),
  qualifications("지원 자격"),
  activity("활동 및 운영"),
  etc("기타");

  const FaqListFilter(this.label);
  final String label;
}

extension FaqListFilterX on FaqListFilter {
  bool apply(FaqItem faq) {
    return switch (this) {
      FaqListFilter.all => true,
      FaqListFilter.qualifications => faq.isQualifications,
      FaqListFilter.activity => faq.isActivity,
      FaqListFilter.etc => faq.isEtc,
    };
  }

  Iterable<FaqItem> applyAll(Iterable<FaqItem> faqs) {
    return faqs.where(apply);
  }
}
