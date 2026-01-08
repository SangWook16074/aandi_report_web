# 💻 A&I Report Web Server - Developer Guide

이 문서는 **A&I 신규회원 멘토링 과제 공지 웹** 프로젝트에 참여하는 **개발자 및 협업자**를 위한 가이드입니다.

## 🛠 환경 설정 (Prerequisites)

이 프로젝트는 **Flutter Web**으로 개발되었습니다. 개발을 시작하기 위해 다음 도구들이 필요합니다.

*   **Flutter SDK**: `^3.5.3` (Stable Channel 권장)
*   **Dart SDK**: Flutter SDK에 포함됨
*   **IDE**: VS Code 또는 Android Studio (Flutter/Dart 플러그인 설치)

## 🚀 시작하기 (Getting Started)

### 1. 프로젝트 클론 및 의존성 설치

```bash
git clone <repository-url>
cd a_and_i_report_web_server
flutter pub get
```

### 2. 환경 변수 설정 (Environment Variables)

이 프로젝트는 `API_URL`을 컴파일 타임 변수(`--dart-define`)로 주입받습니다.
로컬 개발 시 백엔드 API 주소를 설정해야 정상적으로 동작합니다.

*   **API_URL**: 백엔드 서버의 Base URL (예: `http://localhost:8080` 또는 개발 서버 주소)

### 3. 로컬 실행 (Running Locally)

터미널에서 다음 명령어를 사용하여 앱을 실행합니다.

```bash
# 로컬 백엔드 또는 개발 서버 연결 시
flutter run -d chrome --dart-define=API_URL=https://your-api-endpoint.com
```

> **Note**: `API_URL`을 설정하지 않으면 API 요청 시 에러가 발생할 수 있습니다.

### 4. 코드 생성 (Code Generation)

이 프로젝트는 `freezed`, `json_serializable`, `riverpod_generator`를 사용합니다. 모델이나 프로바이더를 수정한 경우 빌드 러너를 실행해야 합니다.

```bash
# 1회 실행
dart run build_runner build --delete-conflicting-outputs

# 변경 감지 및 자동 실행 (개발 중 추천)
dart run build_runner watch --delete-conflicting-outputs
```

## 📂 프로젝트 구조 (Project Structure)

이 프로젝트는 **Feature-first** 기반의 **Clean Architecture + MVVM** 패턴을 따릅니다.

```
lib/
├── main.dart                 # 앱 진입점
└── src/
    ├── core/                 # 공통 모듈 (Constants, Utils, Extensions)
    └── feature/              # 기능별 모듈 (Auth, Home, Reports)
        ├── auth/
        │   ├── data/         # Data Layer (Repository Impl, DTO, Datasource)
        │   ├── domain/       # Domain Layer (Entity, Repository Interface, UseCase)
        │   ├── providers/    # DI & State Management (Riverpod Providers)
        │   └── ui/           # Presentation Layer (Widgets, Screens)
        ├── home/
        └── reports/
```

### 아키텍처 원칙
*   **Domain Layer**: 순수 Dart 코드로 작성하며, Flutter 의존성을 가지지 않도록 노력합니다.
*   **Data Layer**: API 호출 및 로컬 저장소 접근을 담당합니다. `dtos`와 `datasources`가 위치합니다.
*   **Presentation Layer (UI)**: `Riverpod`을 통해 상태를 관리하며, 비즈니스 로직은 최대한 배제하고 UI 렌더링에 집중합니다.

## 📦 주요 라이브러리 (Tech Stack)

| 구분 | 라이브러리 | 용도 |
| --- | --- | --- |
| **Core** | Flutter (Web) | UI 프레임워크 |
| **State Mgt** | **Riverpod** (Hooks Riverpod) | 전역 상태 관리 및 의존성 주입 |
| **Routing** | GoRouter | 선언적 라우팅 관리 |
| **Networking** | Dio, Retrofit | HTTP 클라이언트 및 API 통신 |
| **Code Gen** | Freezed, JSON Serializable | 불변 객체 및 JSON 직렬화 |
| **Utility** | Flutter Hooks | 위젯 생명주기 간소화 |

## 🚢 배포 (Deployment)

이 프로젝트는 **Firebase Hosting**을 사용하며, **GitHub Actions**를 통해 CI/CD가 구축되어 있습니다.

1.  **Trigger**: `main` 브랜치에 코드가 푸시되면 워크플로우가 시작됩니다.
2.  **Build**: Flutter Web Release 모드로 빌드됩니다. (`--dart-define`으로 Secrets의 API URL 주입)
3.  **Deploy**: Firebase Hosting의 `live` 채널로 배포됩니다.

> **수동 배포 필요 시**: Firebase CLI가 필요하며, `firebase deploy` 명령어를 사용합니다. (권장하지 않음, CI 사용 요망)

## 🤝 기여 가이드 (Contribution)

1.  `feature/기능명` 또는 `fix/버그명` 브랜치를 생성하여 작업합니다.
2.  작업 완료 후 `dart format .` 및 `flutter analyze`를 실행하여 코드 품질을 확인합니다.
3.  PR(Pull Request)을 생성하고 리뷰를 요청합니다.

멘토링에서 진행된 과제는 CLI 기반 프로그램 제작이었으며, 주어진 입력값에 대해 정확한 출력값을 도출하는 형식이 중심이었습니다.
2주차과제부터 주어지는 입력값의 길이가 길어지기 시작했고, 이에 따라 IDE 디버깅 과정에서 입력을 직접 타이핑하는 것이 불편하다는 의견이 멘토진 회의에서 제기되었습니다.


<img width="1075" height="249" alt="스크린샷 2025-09-11 오전 11 09 40" src="https://github.com/user-attachments/assets/88a1b0a9-5700-4c9c-bb85-984f1b7d12b5" />

Flutter Web 환경에서는 기본적으로 텍스트 복사 기능을 지원하지 않아, 사용자가 예제 입력값을 복사·붙여넣기 하는 데 불편함이 있었습니다.
이를 개선하기 위해 Clipboard 클래스를 활용하여 텍스트를 가져올 수 있는 방법을 찾아내고, 예제 입출력 복사 기능을 직접 구현하여 2주차 과제에 긴급 패치를 적용했습니다. 이후 해당 내용을 공지사항을 통해 즉시 공유했습니다.

결과적으로 사용후기 설문조사에서 해당 패치에 대해 사용자 만족도 87%(8명 중 7명)를 달성할 수 있었습니다.

### 로그인 요구사항에 따른 Flutter Web에서 JWT 인증인가 구현

멘토링 과정에서는 개인 사정이나 변심으로 인한 이탈자가 발생했으며, 기초 CS 과정에서 기준을 충족하지 못한 회원은 Framework 과정으로 진입할 수 없었습니다. 이로 인해 공개 환경에서 과제를 제공하는 것이 어려워졌고, 
안정적인 과제 제공을 위해 인증·인가 기능이 필요하게 되었습니다.

빠른 도입을 위해 백엔드 팀원이 경험한 JWT 기반 인증 방식을 채택하였고, 이를 바탕으로 Flutter Web 환경에서 JWT 기반 인증·인가 기능을 구현하는 계획을 세웠습니다.

<img width="654" height="338" alt="스크린샷 2025-07-29 오전 11 58 57" src="https://github.com/user-attachments/assets/d5b989cf-aeed-4a20-b50c-39dc9d68da78" />


사용자가 로그인하면 서버에서 Access Token을 발급받아 클라이언트의 Session Storage에 저장하고, 이후 해당 토큰을 참조하여 API 요청을 수행할 수 있도록 구성했습니다.

#### Refresh Token 도입을 안한 계기

기능 추가 당시 기초 CS 과정은 종료가 되어 더이상 사용자가 서비스에 접속하는 일이 없을 것이라는 판단으로 빠른 도입을 위해 Refresh Token을 도입하지 않고 Access Token 단일 구조로 인증을 구현했습니다.
필요 시 보안 강화를 위해 Refresh Token 전략을 추가할 수 있도록 구조적 여지를 두었습니다.

#### Session Storage를 선택한 계기

인증 토큰 저장 방식을 고민하면서 Local Storage는 영속성이 장점이지만, 보안 취약점(XSS 등) 으로 인해 위험 요소가 있다고 판단했습니다. 
반면 Session Storage는 브라우저 종료 시 토큰이 제거되어 보안성이 높아, 사용자 편의성보다 보안 우선 접근을 위해 Session Storage를 선택했습니다.

이는 브라우저 종료 시 자동 삭제되어 XSS 위험을 줄여주지만, 로그인 유지가 어려운 한계가 있어 추후 쿠키 기반 HttpOnly 전략으로 확장할 계획입니다.

## 🤔 트러블 슈팅
### 웹 환경에서 경로에 #이 붙는 문제
Flutter Web 프로젝트를 배포했을 때, 기본 탐색 방식이 해시(#) 기반 라우팅이라 URL에 # 문자가 항상 포함되는 문제가 있었습니다. 이는 사용자에게 이질감을 줄 수 있는 요소였습니다.

이를 해결하기 위해 flutter_web_plugins의 usePathUrlStrategy를 적용하여 경로 기반 라우팅으로 전환했습니다.

```yaml
// pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_web_plugins:
    sdk: flutter
```

```dart
void main() {
  usePathUrlStrategy(); // 경로 기반 탐색 지정
  ...
}
```

그 결과, URL에서 # 문자를 제거하고 보다 자연스러운 웹 탐색 경험을 제공할 수 있었습니다.

### 웹 캐싱 문제
Flutter Web 프로젝트를 Firebase Hosting에 배포할 때, 브라우저 캐시와 서비스워커 때문에 새 UI가 즉시 반영되지 않는 문제가 있었습니다.
이를 해결하기 위해 다음과 같이 CI/CD를 최적화했습니다.

- 서비스워커 제거 (--pwa-strategy=none): 브라우저가 이전 빌드를 캐싱하지 않도록 설정
- Firebase Hosting 캐시 정책 설정: index.html은 항상 최신 로드, JS 파일은 해시 기반 캐싱으로 자동 갱신
- GitHub Actions 워크플로우 최적화: 중복 checkout 제거, release 모드 빌드 적용

```yml
     - name: Build Flutter Web (no service worker, release mode)
        run: flutter build web --release --dart-define=API_URL=${{ secrets.BASE_URL }} --pwa-strategy=none
```

```json
      ...
      "headers": [
        {
          "source": "/index.html",
          "headers": [
            { "key": "Cache-Control", "value": "no-cache, no-store, must-revalidate" }
          ]
        },
        {
          "source": "/main.dart.js",
          "headers": [
            { "key": "Cache-Control", "value": "no-cache" }
          ]
        }
      ]
```

그 결과, 배포 즉시 최신 UI가 반영되며, 강력 새로고침 없이도 사용자에게 항상 최신 화면을 제공할 수 있었습니다.

## 📌 TODO

출시하면서 아쉬웠던 점 및 향후 계획에 대해서 투두리스트를 만들었습니다. 추후 해당 투두리스트를 모두 체크할 수 있도록 틈틈히 개선할 예정입니다.


- [ ] 주요 UI 업데이트 및 UX 개선
- [ ] 관리자 페이지 제작으로 운영 고도화
- [ ] Refresh Token 도입으로 안정성 강화
---
**문의**: A&I 운영진 개발팀
