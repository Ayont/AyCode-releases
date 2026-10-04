#!/bin/sh
# Replaces the release notes of AyCode 7.0.0–7.1.4 with the bilingual versions
# (English first, German below). Release files are not touched.
set -e
cd "$(dirname "$0")"
for v in 7.0.0 7.1.0 7.1.1 7.1.2 7.1.3 7.1.4; do
  gh release edit "v$v" --repo Ayont/AyCode-releases --notes-file "v$v.md"
  echo "updated v$v"
done
