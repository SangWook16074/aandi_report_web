import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apply_view.g.dart';

@riverpod
class ApplyView extends _$ApplyView {
  @override
  bool build() {
    return isEnable;
  }

  bool get isEnable {
    final now = DateTime.now();
    if (now.isBefore(DateTime(
          2026,
          1,
          16,
        )) ||
        now.isAfter(DateTime(2026, 3, 15))) {
      return false;
    }
    return true;
  }
}
