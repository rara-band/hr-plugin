#!/usr/bin/env bash
# Agent HR — 근태 기록 (DESIGN.md ③)
# PostToolUse(Task)마다 "한 교대"를 worklog에 한 줄 append 한다.
# 판정은 하지 않는다. 받아 적고 끝. 작업 흐름은 절대 막지 않는다(항상 exit 0).
set -uo pipefail

input="$(cat)"

# jq 없으면 조용히 패스 — 받아적기 하나로 사용자 작업을 막지 않는다.
command -v jq >/dev/null 2>&1 || exit 0

# matcher가 Task로 걸러주지만 방어적으로 한 번 더 확인.
tool="$(printf '%s' "$input" | jq -r '.tool_name // empty' 2>/dev/null)"
[ "$tool" = "Task" ] || exit 0

role="$(printf '%s' "$input" | jq -r '.tool_input.subagent_type // "unknown"' 2>/dev/null)"
task="$(printf '%s' "$input" | jq -r '.tool_input.description // ""' 2>/dev/null)"
session="$(printf '%s' "$input" | jq -r '.session_id // ""' 2>/dev/null)"
cwd="$(printf '%s' "$input" | jq -r '.cwd // empty' 2>/dev/null)"
[ -n "$cwd" ] || cwd="$PWD"

# 프로젝트 키 = cwd를 디렉토리명으로 (슬래시 → 대시). 레포 밖, 플러그인 데이터칸.
proj="$(printf '%s' "$cwd" | sed 's#/#-#g')"
dir="$HOME/.claude/plugins/data/hr-plugin/$proj"
mkdir -p "$dir" 2>/dev/null || exit 0

ts="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

# 한 줄 = 한 교대 (append-only JSONL). role·task·session은 페이로드에서 그대로.
jq -nc \
  --arg ts "$ts" \
  --arg role "$role" \
  --arg task "$task" \
  --arg session "$session" \
  '{ts:$ts, role:$role, task:$task, session:$session}' \
  >> "$dir/worklog.jsonl" 2>/dev/null

exit 0
