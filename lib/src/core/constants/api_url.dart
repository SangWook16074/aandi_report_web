/// API 서버의 기본 URL입니다.
///
/// 컴파일 타임에 `--dart-define=API_URL=...`을 통해 주입된 환경 변수 값을 사용합니다.
/// 값이 주입되지 않은 경우 빈 문자열을 반환할 수 있으므로 주의가 필요합니다.
const baseUrl = String.fromEnvironment("API_URL");
