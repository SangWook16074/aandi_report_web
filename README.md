# 🖥️ A&I 신규회언 멘토링 과제 공지 웹
Flutter로 제작되어 Firebase Hosting으로 배포되었습니다. 실제 멘토링에서 사용되어 올해 A&I 3기 신규회원 멘토링에서 사용되었습니다.

기존에도 과제를 공지할 수 있는 다양한 플랫폼이 있었지만, 우리만의 학습 방식과 문화를 가장 잘 반영할 수 있는 환경을 만들고 싶다는 열망이 컸습니다. 이에 따라, 3기 운영진 동료와 함께 우리의 구조와 흐름을 자연스럽게 담을 수 있는 웹 기반 과제 공지 플랫폼을 직접 제작하게 되었습니다.

<img width="1624" height="995" alt="스크린샷 2025-09-11 오전 12 41 34" src="https://github.com/user-attachments/assets/426d260f-e51e-4f7b-9e3b-4313f76e2ed7" />


## A&I 신규회원 멘토링 과제 공지 웹 1.0.0
개발기간 : 2025.03.12 - 2025.03.22 (10일)

## 🚀 배포
- [https://aandi-report-web.web.app](https://aandi-report-web.web.app)

## 🛠 기술 스택

- 프레임워크 : Flutter
- 상태관리 : Riverpod
- 아키텍처 : MVVMClean Architecture
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


## 🤔 주요 기여

### Github Actions + Firebase Hosting기반 CICD 구축

### 예제 입출력 기능 추가로 UX 개선


## 📌 TODO

출시하면서 아쉬웠던 점 및 향후 계획에 대해서 투두리스트를 만들었습니다. 추후 해당 투두리스트를 모두 체크할 수 있도록 틈틈히 개선할 예정입니다.


- [ ] 주요 UI 업데이트 및 UX 개선
- [ ] 관리자 페이지 제작으로 운영 고도화
