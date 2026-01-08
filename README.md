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

---
**문의**: A&I 운영진 개발팀