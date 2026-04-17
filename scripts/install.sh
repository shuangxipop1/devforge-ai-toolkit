#!/bin/bash
# DevForge AI Toolkit Installer

set -e

echo "DevForge AI Toolkit Installer"
echo "=============================="

# Detect AI assistant
detect_ai() {
  if command -v claude &> /dev/null; then
    echo "Claude Code detected"
    AI_ASSISTANT="claude-code"
  elif command -v hermes &> /dev/null; then
    echo "Hermes AI detected"
    AI_ASSISTANT="hermes"
  elif command -v openclaw &> /dev/null; then
    echo "OpenClaw detected"
    AI_ASSISTANT="openclaw"
  else
    echo "No AI assistant detected"
    AI_ASSISTANT="none"
  fi
}

install_for_claude() {
  mkdir -p ~/.claude/skills/devforge
  cp -r templates/* ~/.claude/skills/devforge/
  echo "✓ Installed for Claude Code"
}

install_for_hermes() {
  mkdir -p ~/.hermes/skills/devforge
  cp -r templates/* ~/.hermes/skills/devforge/
  echo "✓ Installed for Hermes AI"
}

install_for_openclaw() {
  mkdir -p ~/.openclaw/skills/devforge
  cp -r templates/* ~/.openclaw/skills/devforge/
  echo "✓ Installed for OpenClaw"
}

detect_ai

case $AI_ASSISTANT in
  claude-code)
    install_for_claude
    ;;
  hermes)
    install_for_hermes
    ;;
  openclaw)
    install_for_openclaw
    ;;
  *)
    echo "Installing templates locally..."
    mkdir -p ~/devforge-templates
    cp -r templates/* ~/devforge-templates/
    echo "✓ Templates copied to ~/devforge-templates"
    ;;
esac

echo ""
echo "Installation complete!"
echo "Run /devforge to start using templates."
