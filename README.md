# 🖥️ A&I 신규회원 멘토링 과제 공지 웹
Flutter로 제작되어 Firebase Hosting으로 배포되었습니다. 실제 멘토링에서 사용되어 올해 A&I 3기 신규회원 기초 CS 멘토링에서 사용되었습니다.

기존에도 과제를 공지할 수 있는 다양한 플랫폼이 있었지만, 우리만의 학습 방식과 문화를 가장 잘 반영할 수 있는 환경을 만들고 싶다는 열망이 컸습니다. 이에 따라, 3기 운영진 동료와 함께 우리의 구조와 흐름을 자연스럽게 담을 수 있는 웹 기반 과제 공지 플랫폼을 직접 제작하게 되었습니다.

<img width="1624" height="995" alt="스크린샷 2025-09-11 오전 12 41 34" src="https://github.com/user-attachments/assets/426d260f-e51e-4f7b-9e3b-4313f76e2ed7" />


## A&I 신규회원 멘토링 과제 공지 웹 1.0.0
개발기간 : 2025.03.12 - 2025.03.22 (10일)

## 🚀 배포
- [https://aandi-report-web.web.app](https://aandi-report-web.web.app)

## 🛠 기술 스택

- 프레임워크 : Flutter
- 상태관리 : Riverpod
- 아키텍처 : MVVM + Clean Architecture
- 백엔드 : Spring Boot + MongoDB + JWT
- 기타 : Freezed / Equatable / Go_Router

## 개발 기록

- 2025.03.08 프로젝트 시작
- 2025.03.12 Figma를 통해 과제 UI 디자인 확정 및 제작 시작
- 2025.03.14 테스트용 프로토타입 배포
- 2025.03.22 과제 UI 및 과제 상세 UI 제작 완료 및 배포
- 2025.04.04 서비스 운영 시작
- 2025.07.23 인증인가 요구사항으로 인한 로그인 기능 추가

## 💡 주요 기능

- **🔒 로그인**
    
  발급받은 계정을 통해 손쉽게 로그인할 수 있습니다.

- **📅 주차별 과제 및 현황 확인**

  주차별 과제 현황과 진행중인 과제를 확인할 수 있습니다.


## 📸 앱 스크린샷 및 동작
<table>
  <tr>
    <td>
      <img src = https://github.com/user-attachments/assets/9fdc9fc6-0e63-4dbf-867b-2adcd78419ba>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/12c341f9-2766-47d2-898d-0e43b36f5cc9>
    </td>
    <td>
      <img src = https://github.com/user-attachments/assets/eff26f3f-a244-4c93-aa22-53a1b045086c>
    </td>
  </tr>
</table>

- 과제 UI 동작과정

  ![과제 UI](https://github.com/user-attachments/assets/c907cda1-40ad-41a4-8d26-6cfc1de8c610)

- 로그인 인증인가 동작과정

  ![로그인](https://github.com/user-attachments/assets/74ba3c1c-57ec-4304-9629-8115c406c713)

- 전체 동작과정 영상

  [https://www.youtube.com/watch?v=S39MEN3Uvkw](https://www.youtube.com/watch?v=S39MEN3Uvkw)

## 🔥 주요 기여 및 성과

### Github Actions + Firebase Hosting기반 CICD 구축

멘토링 서비스를 시작 시점에 맞추기 위해 빠르게 제작되었기 때문에, 운영 과정에서 UI 요구사항 변경이나 UX 개선 패치 등 다양한 수정이 지속적으로 이루어졌습니다.
그러나 배포 과정이 수동으로 진행되면서 잘못된 명령어 입력 등의 문제가 자주 발생했고, 이는 곧 배포 오류와 지연으로 이어졌습니다.
이러한 문제를 해결하기 위해 CI/CD 파이프라인 구축을 계획하게 되었습니다.

<img width="917" height="301" alt="스크린샷 2025-09-11 오전 11 56 06" src="https://github.com/user-attachments/assets/7286de16-f68f-422d-816e-a9d005ada6b2" />


GitHub 메인 브랜치에 코드를 푸시하면, GitHub Actions 스크립트가 자동으로 실행되어 Firebase Hosting을 통해 즉시 Flutter Web 서비스가 배포되도록 구성했습니다.

결과적으로 이후 개선 패치 배포과정시간이 단축되었고, 수동 배포로 인한 오류 발생 0%를 달성할 수 있었습니다.


### 예제 입출력 기능 추가로 UX 개선

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
