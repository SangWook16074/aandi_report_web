import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Riverpod 상태 변경을 모니터링하는 로거입니다.
///
/// [ProviderObserver]를 상속받아 구현되었으며, 앱 내의 모든 Provider의 상태 변화를 감지합니다.
/// `didUpdateProvider`를 통해 변경 전([previousValue])과 변경 후([newValue])의 값을 콘솔에 출력하여
/// 디버깅을 용이하게 합니다.
class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    {
      log('''
{
  "provider": "$provider",
  "newValue": "$newValue",
  
}''');
    }
  }
}
