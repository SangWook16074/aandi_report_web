import 'package:flutter_secure_storage_web/flutter_secure_storage_web.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

@riverpod
FlutterSecureStorageWeb secureStorage(Ref ref) {
  return FlutterSecureStorageWeb();
}
