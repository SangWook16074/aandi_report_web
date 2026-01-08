import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

/// HTTP 통신을 위한 [Dio] 인스턴스를 제공하는 Provider입니다.
///
/// 애플리케이션 전반에서 API 호출 시 이 Provider를 통해 Dio 클라이언트를 주입받아 사용합니다.
/// 필요한 경우 Interceptor나 기본 옵션(BaseOptions)을 이곳에서 설정할 수 있습니다.
@riverpod
Dio dio(Ref ref) {
  return Dio();
}
