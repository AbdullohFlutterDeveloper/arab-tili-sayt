#!/usr/bin/env bash
# Manba repo'dan darslarni sayt repo'siga nusxalaydi (PDF va kitob matnlari kirmaydi)
set -e
SRC="$HOME/personal/Hayot va Rivojlanish/Hayot va rivojlanish/Tillar/Arab tili"
D="$(cd "$(dirname "$0")" && pwd)"
rm -rf "$D/docs/Darslik" "$D/docs/matnlar"
cp -r "$SRC/Darslik" "$D/docs/Darslik"
mkdir -p "$D/docs/matnlar" && cp -r "$SRC/matnlar/suralar" "$D/docs/matnlar/suralar"
cp "$SRC/Arab tili Roadmap.md" "$D/docs/roadmap.md"
cp "$SRC/Nahv Roadmap.md" "$D/docs/nahv-roadmap.md"
