#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET_HOME="${HOME:-~}"

echo "=========================================="
echo "  Universal AI Agent Skills Installer"
echo "=========================================="
echo "Source: $REPO_DIR"
echo ""

# 1. Google Antigravity / Gemini CLI (~/.gemini/config/skills)
GEMINI_SKILLS="$TARGET_HOME/.gemini/config/skills"
mkdir -p "$GEMINI_SKILLS"
echo "-> Linking skills to Antigravity ($GEMINI_SKILLS)..."
for skill_dir in "$REPO_DIR"/skills/*; do
  if [ -d "$skill_dir" ]; then
    skill_name="$(basename "$skill_dir")"
    ln -sf "$skill_dir" "$GEMINI_SKILLS/$skill_name"
  fi
done
echo "   [OK] Antigravity skills linked."

# 2. OpenCode (~/.config/opencode/skills, ~/.config/opencode/commands)
OPENCODE_DIR="$TARGET_HOME/.config/opencode"
mkdir -p "$OPENCODE_DIR"
echo "-> Linking skills & commands to OpenCode ($OPENCODE_DIR)..."
ln -sfn "$REPO_DIR/skills" "$OPENCODE_DIR/skills"
ln -sfn "$REPO_DIR/commands" "$OPENCODE_DIR/commands"
echo "   [OK] OpenCode skills & commands linked."

# 3. Claude Code (~/.claude/skills, ~/.claude/commands)
CLAUDE_SKILLS="$TARGET_HOME/.claude/skills"
CLAUDE_COMMANDS="$TARGET_HOME/.claude/commands"
mkdir -p "$CLAUDE_SKILLS" "$CLAUDE_COMMANDS"
echo "-> Linking skills & commands to Claude Code ($TARGET_HOME/.claude)..."
for skill_dir in "$REPO_DIR"/skills/*; do
  if [ -d "$skill_dir" ]; then
    skill_name="$(basename "$skill_dir")"
    ln -sf "$skill_dir" "$CLAUDE_SKILLS/$skill_name"
  fi
done
for cmd_file in "$REPO_DIR"/commands/*; do
  if [ -f "$cmd_file" ]; then
    cmd_name="$(basename "$cmd_file")"
    ln -sf "$cmd_file" "$CLAUDE_COMMANDS/$cmd_name"
  fi
done
echo "   [OK] Claude Code skills & commands linked."

echo ""
echo "=========================================="
echo "  Installation Complete!"
echo "=========================================="
echo "Skills and commands are now active for:"
echo "  - Antigravity / Gemini CLI"
echo "  - OpenCode"
echo "  - Claude Code"
echo ""
echo "Any edits or 'git pull' in this repo will automatically update all agents."

