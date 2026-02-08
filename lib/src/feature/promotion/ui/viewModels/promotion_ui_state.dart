import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'promotion_ui_state.g.dart';

@riverpod
class HeroApplyButtonVisibility extends _$HeroApplyButtonVisibility {
  @override
  bool build() {
    return true; 
  }

  void setVisible(bool visible) {
    state = visible;
  }
}

@riverpod
class BottomApplyButtonVisibility extends _$BottomApplyButtonVisibility {
  @override
  bool build() {
    return false; 
  }

  void setVisible(bool visible) {
    state = visible;
  }
}
