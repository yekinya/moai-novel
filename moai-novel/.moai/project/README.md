# Project Context — 소설 설계 자료

이 디렉터리는 작품 설계의 **단일 진실 소스**입니다. 기존 `docs/moai/`, `docs/novel/`의 자료를 MoAI 영역으로 통합 이전했습니다 (2026-05-28).

## 구조

| 경로 | 용도 | 내용 |
|------|------|------|
| `novel/` | 작품 핵심 설계 | 로그라인, 인물, 플롯 |
| `world/` | 세계관·도메인 | 대륙 개요, 마나·엔트로픽, 신·법칙, 종족, 지리, 역사, 신화, 영웅 |
| `systems/` | 작중 시스템 | 마법 체계, 전투 체계, 마법 원리·역사 |
| `guides/` | 집필 가이드 | 작성 원칙, 용어집 |
| `brand/` | (MoAI 기본) 톤·시각 정체성 — 향후 출판/홍보용 |
| `db/` | (MoAI 기본) DB 메타데이터 — 본 프로젝트에선 미사용 |

### world/ 세부

- `lithunia-world-overview.md` — 세계관 진입점
- `mana-and-entropic-density.md` — 물리 토대 (마나/엔트로픽 농도)
- `life-reset-and-demon-war.md` — 생명 초기화와 신좌침묵
- `lithunia-history.md` — 대륙사
- `great-sage-and-entroper.md` — 대현자와 앤트로퍼
- `pantheon.md` — 신=법칙 체계 (르세프/크세프 + 하위 법칙)
- `creation-myth.md` — 사피엔이 믿는 창조 신화 vs 실제 마나 평형
- `races.md` — 사피엔스/엘프/드래곤/드워프/오크/언데드/하플링/거인족/요정
- `legendary-figures.md` — 행커만·일레인·스펠른 등 과거 대마법사
- `geography.md` — 헤븐즈 킹덤·엘더스톰·강철제국·미드그레이드·무스페름 등

## 참조 순위 (충돌 시)

1. `novel/premise.md` — 로그라인·핵심 약속이 모든 결정의 상위 규칙
2. `world/` — 세계관 일관성
3. `systems/` — 마법·전투의 인과 규칙
4. `guides/writing-guide.md` — 문체·서사 톤

## 작업 시 주의

- `.moai/specs/`는 코드 EARS SPEC 전용입니다. 작중 시스템 명세는 `systems/`에 둡니다.
- 설정 변경은 인과관계 검증 후 반영 (`guides/writing-guide.md` 참조).
- Hermes/GPT 등 외부 에이전트가 참조할 경로는 `AGENTS.md`에서 갱신 필요.
