# moai-novel Agent Context

## HARD RULE — 작업 경로

- 이 프로젝트의 **유일한 공식 작업 경로**는 `/opt/data/workspace/moai-novel`이다.
- 소설 작업, 세계관 설계, 설정 문서, 원고, 분석자료는 반드시 이 경로 아래에만 작성/수정한다.
- `/opt/data/.hermes/workspace/moai-novel`에는 새 파일을 만들거나 수정하지 않는다.
- Docker 마운트 기준: `/opt/data/workspace/moai-novel` = macOS `/Users/solutionhlp/Documents/agent-workspace/moai-novel`.

## HARD RULE — 자동 Push

- [HARD] 모든 작업 완료 시 **무조건** `git push` 까지 수행한다.
- 작업 완료의 정의: 사용자 요청에 대한 응답으로 커밋이 생성된 모든 시점.
- 예외 없음: 사용자가 명시적으로 "push 하지 마" 라고 한 경우에만 보류한다.
- 순서: 커밋 → 즉시 `git push` → 결과 보고.
- push 실패 시: 원인 진단 후 사용자에게 즉시 보고 (force push는 금지).
- 커밋이 없는 작업(읽기/분석만 수행)은 push 대상이 아니다.

## 작업 원칙

- 언어: 한국어.
- 장르: 일반 판타지.
- 현재 단계: **설계 단계**.
- 설계 문서는 구구절절한 설명보다 **핵심 요약, 인과관계, 개연성, 일관성**을 우선한다.
- 확정되지 않은 내용은 `미정` 또는 `후보`로 표시한다.
- 새 설정은 반드시 기존 문맥과 충돌하지 않아야 한다.
- 창의력을 최대한 발휘하되, 개연성/맥락/인과관계를 무너뜨리지 않는다.
- 사용자의 아이디어를 단순 정리하는 데 그치지 말고, 더 나은 결과가 되도록 능동적으로 보강한다.
- 초반 30%까지는 표면적으로 권선징악 판타지처럼 읽히되, 모든 핵심 단서는 이미 자연스럽게 배치되어야 한다.

## 핵심 세계관

- 무대: 마나가 충만한 `리투니아 대륙`.
- 세계 원리: 모든 자연/생물/창조물은 마나로 구성된다.
- 문제: 생명이 늘수록 마나가 생명 구조에 묶여 `엔트로픽 농도`가 상승한다.
- 임계점: 농도가 한계를 넘으면 대륙적 마나 역류가 발생한다.
- 결과: 역류는 마계 강림과 마물 침공으로 나타나며 생명을 해체해 평형을 회복한다.
- 과거: 대현자는 수백 년 전 금기 역사 `신좌침묵`에서 이 생명 초기화를 막았다.
- 현재의 비극: 대현자는 재초기화를 막기 위해 생명을 줄이는 씨앗 `앤트로퍼`를 만들었다.
- 앤트로퍼: 인간의 마음에 깃드는 살인기계의 씨앗. 숙주의 감각을 왜곡해 학살을 악행으로 느끼지 못하게 한다.

## 우선 참조 문서

### 세계관/도메인

- [리투니아 세계관 개요](.moai/project/world/lithunia-world-overview.md)
- [마나와 엔트로픽 농도](.moai/project/world/mana-and-entropic-density.md)
- [생명 초기화와 신좌침묵](.moai/project/world/life-reset-and-demon-war.md)
- [리투니아 대륙사](.moai/project/world/lithunia-history.md)
- [대현자와 앤트로퍼](.moai/project/world/great-sage-and-entroper.md)
- [Pantheon — 신과 법칙](.moai/project/world/pantheon.md)
- [창조 신화 — 표면 서사와 본질](.moai/project/world/creation-myth.md)
- [종족](.moai/project/world/races.md)
- [역사 속 영웅과 대마법사](.moai/project/world/legendary-figures.md)
- [지리와 정치체](.moai/project/world/geography.md)

### 설계 스펙

- [마법체계](.moai/project/systems/magic-system.md)
- [전투체계](.moai/project/systems/combat-system.md)
- [마법 원리·역사](.moai/project/systems/magic-principles-history.md)

### 집필/관리

- [집필 가이드](.moai/project/guides/writing-guide.md)
- [용어집](.moai/project/guides/glossary.md)

### 작품 설계

- [프리미스](.moai/project/novel/premise.md)
- [플롯](.moai/project/novel/plot.md)
- [인물](.moai/project/novel/characters.md)
