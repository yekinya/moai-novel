# 본문 작성 이력·잠금 상태 (Writing Progress & Lock)

> **HARD RULE** (사용자 정의): *작성 완료* 상태로 표기된 파일은 **절대 수정 금지**. 오타·문법·문체 보정 포함 *어떠한 변경도 불가*. 변경이 필요할 경우 사용자가 *명시적으로 해제 지시*해야만 수정 가능.

---

## 상태 범주

| 상태 | 의미 | 수정 가능 여부 |
|------|------|---------------|
| 🔒 **LOCKED — 작성 완료** | 사용자가 작성 완료 선언한 파일 | ❌ 금지 (사용자 명시 해제만) |
| ✍️ **DRAFT — 초안** | 작성 중·검토 대기 | ⚠️ 사용자 지시 시 수정 |
| 📝 **PLANNED — 미작성** | spec 작성 완료·본문 대기 | ✅ 본문 작성 가능 |

---

## Chapter 1 — 변경의 아이 · 외교의 학살자

| 파일 | 상태 | 분량 | 비고 |
|------|------|------|------|
| `chapter1/00-prologue.md` | 🔒 **LOCKED** | 6,122자 | *옥좌의 피·5합 결투·결착*. 사용자 직접 재작성 완료 (2026-06-01) |
| `chapter1/01-part-1.md` | 🔒 **LOCKED** | 8,959자 | 1-1~1-5 통합 — 오타·맞춤법·HARD룰 위반(인칭대명사·이탤릭) 일괄 검수 후 작성 완료 (2026-06-02) |
| `chapter1/02-part-2.md` | ✍️ DRAFT | 7,852자 | 떠돌이의 길 (Ch1 P2) — 7회차 1.5-1~1.5-7 통합 |
| `chapter1/03-part-3.md` | ✍️ DRAFT | 6,408자 | 셀라리아 5년 (Ch1 P3) — 8회차 2-1~2-8 통합 (2026-06-01) |
| `chapter1/04-part-4.md` | ✍️ DRAFT | 7,605자 | 정의의 가면 (Ch1 P4) — 7회차 + 외전 (마하 시점 교차 포함) (2026-06-01) |
| `chapter1/05-part-5.md` | 📝 PLANNED | — | 학살자 + 옥좌의 방 (Ch1 P5) |
| `chapter1/06-part-6.md` | 📝 PLANNED | — | 둥지의 카자르드 (Ch1 P6) |

## Chapter 2 — 재정체화·결전·종결

| 파일 | 상태 | 분량 | 비고 |
|------|------|------|------|
| `chapter2/01-part-1.md` ~ `chapter2/09-part-9.md` | 📝 PLANNED | — | spec 9개 완료, 본문 대기 |

## Chapter 3 — 추격·회복·마계 군주 (예정)

| 파일 | 상태 | 분량 | 비고 |
|------|------|------|------|
| `chapter3/01-part-1.md` ~ `chapter3/09-part-9.md` | 📝 PLANNED | — | spec 9개 완료, 본문 대기 |

## Chapter 4 — 신성연합·이계 균열 (예정)

| 파일 | 상태 | 분량 | 비고 |
|------|------|------|------|
| `chapter4/01-part-1.md` ~ `chapter4/09-part-9.md` | 📝 PLANNED | — | spec 9개 완료, 본문 대기 |

---

## 상태 전환 이력

| 날짜 | 파일 | 변경 | 변경자 |
|------|------|------|--------|
| 2026-06-01 | `chapter1/00-prologue.md` | DRAFT → 🔒 **LOCKED** | 사용자 선언 |
| 2026-06-01 | `chapter1/01-part-1.md` | 신규 작성 (DRAFT) | MoAI |
| 2026-06-01 | `chapter1/01-part-1.md` | *(고 ... 믿었다)* 표현 제거 + 산파/우물가/성년식/회의소/마탑 대사·상황 극적 보강 | MoAI |
| 2026-06-01 | `chapter1/02-part-2.md` | 신규 작성 (DRAFT·7,852자·spec 정합) | MoAI |
| 2026-06-01 | `chapter1/03-part-3.md` | 신규 작성 (DRAFT·6,408자·spec 정합) | MoAI |
| 2026-06-01 | `chapter1/04-part-4.md` | 신규 작성 (DRAFT·7,605자·spec 정합) | MoAI |
| 2026-06-02 | `chapter1/01-part-1.md` | 오타·맞춤법·HARD룰 위반 일괄 검수 (혼절·맴돌았다·동갑내기·힐끗·쫓겨났다 등 28건 + 이탤릭 17건 strip + 인칭대명사 호명 변경) → DRAFT → 🔒 **LOCKED** | 사용자 선언 |

---

## HARD RULE 절차

1. **작성 전 점검 — 3중 확인 필수**:
   - (1) 본 PROGRESS.md 확인 — 대상 파일이 🔒 LOCKED인 경우 *작성 거부 + 사용자 보고*
   - (2) **spec 확인** — `.moai/project/novel/specs/spec-chapter-{N}-part-{M}.md` *반드시* 먼저 읽기
   - (3) spec의 *회차 구성·핵심 비트·인물·금지 항목·종결 후크* 모두 반영 준비
2. **본문 = spec 구현** (사용자 HARD):
   - spec의 *모든 비트·대사·시드·아티팩트·인물 등장 시점* 빠짐없이 구현
   - *부 단위 약속·금지 항목·narrative-devices* 위반 금지
   - 충돌 시 사용자 보고 후 결정
3. **신규 작성 후 양방향 sync**:
   - 본문 작성 직후 PROGRESS.md *상태 + 분량 + 이력* 갱신
   - 본문에 *spec에 없던 새 정통·대사·인물·아티팩트* 추가 시 — *즉시 spec sync*
   - 사용자가 본문 직접 수정 시에도 *spec 갱신 필수*
4. **LOCKED 해제**: 사용자 *명시 해제 지시*만 가능. 임의 해제 금지
5. **부분 수정**: LOCKED 파일 오타·문법 발견 시에도 *수정 금지·보고만*

### spec sync 대상

- 1차: `spec-chapter-{N}-part-{M}.md` (해당 회차)
- 2차: `spec-chapter-{N}.md` (Chapter 마스터)
- 영향 시: `novel/characters.md`·`characters-psychology.md`·`narrative-devices.md`·`world/*.md`·`systems/*.md`

---

Version: 1.0.1
Last Updated: 2026-06-02
