#!/usr/bin/env bash
# Agent HR — worklog 정리 (DESIGN.md ③ 보존)
# 오래된 교대만 덜어낸다. 되돌아보기에 필요한 최근 history는 지킨다.
# 기준: 최근 KEEP_DAYS일 + 안전 상한 KEEP_MAX줄. SessionStart마다 자동.
# 판정과 무관(나이 기준이라 되돌아보기를 안 깬다). 작업 흐름 안 막음(항상 exit 0).
set -uo pipefail

KEEP_DAYS=90
KEEP_MAX=20000

command -v jq >/dev/null 2>&1 || exit 0

input="$(cat 2>/dev/null || true)"
cwd="$(printf '%s' "$input" | jq -r '.cwd // empty' 2>/dev/null)"
[ -n "$cwd" ] || cwd="$PWD"
proj="$(printf '%s' "$cwd" | sed 's#/#-#g')"
f="$HOME/.claude/plugins/data/hr-plugin/$proj/worklog.jsonl"
[ -f "$f" ] || exit 0

# cutoff = now - KEEP_DAYS (ISO). BSD(macOS)·GNU 둘 다 시도.
cutoff="$(date -u -v-${KEEP_DAYS}d +%Y-%m-%dT%H:%M:%SZ 2>/dev/null \
  || date -u -d "-${KEEP_DAYS} days" +%Y-%m-%dT%H:%M:%SZ 2>/dev/null)"
[ -n "$cutoff" ] || exit 0

tmp="$(mktemp 2>/dev/null)" || exit 0
# 1) 나이 필터 — ts >= cutoff (ISO 8601은 문자열 정렬이 곧 시간 정렬).
jq -c --arg c "$cutoff" 'select((.ts // "") >= $c)' "$f" 2>/dev/null > "$tmp" \
  || { rm -f "$tmp"; exit 0; }
# 2) 안전 상한 — 최신 KEEP_MAX줄만.
if [ "$(wc -l < "$tmp" 2>/dev/null || echo 0)" -gt "$KEEP_MAX" ]; then
  tail -n "$KEEP_MAX" "$tmp" > "$tmp.2" 2>/dev/null && mv "$tmp.2" "$tmp"
fi
mv "$tmp" "$f" 2>/dev/null || rm -f "$tmp"
exit 0
