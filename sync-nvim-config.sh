#!/usr/bin/env bash
set -euo pipefail

repo_root="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
dest="${HOME}/.config/nvim"

mkdir -p "$dest"

rsync -a --delete \
  --exclude '.git/' \
  --exclude '.github/' \
  "${repo_root}/" \
  "${dest}/"
