#!/bin/bash
# 把本 repo 的所有 skills 複製到 ~/.claude/skills/
# 適用：opencode 使用者，或不想用 Claude Code plugin 機制的使用者

set -e
cd "$(dirname "$0")"

DEST="$HOME/.claude/skills"
mkdir -p "$DEST"

installed=0
skipped=0

for skill_dir in plugins/*/skills/*/; do
  name="$(basename "$skill_dir")"
  target="$DEST/$name"
  if [ -d "$target" ]; then
    read -r -p "skill「$name」已存在於 $DEST，要覆蓋嗎？ [y/N] " ans
    case "$ans" in
      [Yy]*) rm -rf "$target" ;;
      *) echo "  略過 $name"; skipped=$((skipped+1)); continue ;;
    esac
  fi
  cp -R "$skill_dir" "$target"
  echo "  已安裝 $name"
  installed=$((installed+1))
done

echo
echo "完成：安裝 $installed 個，略過 $skipped 個。"
echo "skills 位置：$DEST（Claude Code 與 opencode 都會自動讀取）"
