#!/usr/bin/env bash
# Prints a label for a tmux window's first pane directory.
# If the directory is inside a git worktree, prints "repo_name(branch)".
# Otherwise prints the directory's basename.

dir="$1"

common_dir=$(git -C "$dir" rev-parse --git-common-dir 2>/dev/null)
git_dir=$(git -C "$dir" rev-parse --git-dir 2>/dev/null)

if [ -n "$common_dir" ] && [ "$common_dir" != "$git_dir" ]; then
  repo_root=$(cd "$dir" && git rev-parse --path-format=absolute --git-common-dir 2>/dev/null)
  repo_name=$(basename "$(dirname "$repo_root")")
  branch=$(git -C "$dir" branch --show-current 2>/dev/null)
  if [ -n "$branch" ]; then
    echo "${repo_name}(${branch})"
    exit 0
  fi
fi

basename "$dir"
