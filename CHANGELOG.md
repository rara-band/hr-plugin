# Changelog

이 플러그인은 [유의적 버전](https://semver.org/lang/ko/)을 따른다 — `vMAJOR.MINOR.PATCH`.
`1.0.0` 이전(`0.y.z`)은 공개 전이라 언제든 바뀔 수 있다. 버전의 단일 소스는 `.claude-plugin/plugin.json`.

**버전 올리는 규칙** (플러그인 자신의 *변경 등급*과 맞춤):

| 올림 | = 변경 등급 | 언제 |
|---|---|---|
| **MAJOR** | 큰 변경 | 동작/계약이 깨짐 — 훅 이벤트·worklog 형식·출력 형식이 기존과 안 맞게 바뀜 |
| **MINOR** | 중간 변경 | 호환되는 기능 추가 — 새 발령 종류·새 신호·새 스킬 |
| **PATCH** | 작은 변경 | 문구·버그 수정, 동작은 그대로 |

릴리스할 때 git 태그를 같이 단다: `git tag v0.1.0`.

---

## [Unreleased]

## [0.1.0] — 2026-06-26
첫 버전. **"현재 에이전트 배치가 방향에 얼마나 핏한가"** 하나만 판단하는 검토 루프.

### Added
- **껍데기** — `plugin.json`·`marketplace.json`, AGENTS.md doctrine, HR 위키, 다국어 README.
- **근태 훅** — `PostToolUse(Task)`마다 한 교대를 `worklog.jsonl`에 적재 (`hooks/scripts/record-shift.sh`). 받아 적기만, 작업 흐름 안 막음.
- **`hr-analyst`** — 배치 핏 2-box(방향 적합 × 업무량) 판정 + "남아도나" 3단계 + 가드(직무 분리·되돌아보기 기간·측정 정직성).
- **`/hr-review`** — 방향 묻고 → worklog+명단 모아 분석가에 넘기고 → 확정 권고 + 개편안 → 승인 게이트.
- **DESIGN.md** — v1 동작 설계 (목표 → 맥락 → 수단 → 기준 → 출력). 훅 페이로드는 로컬 실측으로 확정.

### Notes
- 범위 밖(나중): 결과 캡처·합치기·채용 빈틈 분석·구조 판정·Codex 배선·시계열·품질(eval)·비용.
