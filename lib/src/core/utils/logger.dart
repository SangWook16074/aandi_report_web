import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

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
