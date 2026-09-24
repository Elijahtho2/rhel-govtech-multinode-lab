#!

SRC="/media/sf_win-screenshots"
DEST="$HOME/rhel-govtech-multinode-lab"

echo "Importing screenshots from $SRC..."

# -----------------------------
# Phase 1 - Gov-Auth (Days 1-3)
# -----------------------------

mkdir -p "$DEST/phase-1-foundation/gov-auth/screenshots"

mv $SRC/day1-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null
mv $SRC/day2-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null
mv $SRC/day3-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null


mv $SRC/day-1-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null
mv $SRC/day-2-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null
mv $SRC/day-3-*   "$DEST/phase-1-foundation/gov-auth/screenshots/" 2>/dev/null

# -----------------------------
# Phase 2 - Gov-Admin (Days 4-5)
# -----------------------------

mkdir -p "$DEST/phase-2-core-infrastructure/gov-admin/screenshots"

mv $SRC/day4-*   "$DEST/phase-2-core-infrastructure/gov-admin/screenshots" 2>/dev/null
mv $SRC/day5-*   "$DEST/phase-2-core-infrastructure/gov-admin/screenshots" 2>/dev/null

mv $SRC/day-04-* "$DEST/phase-2-core-infrastructure/gov-admin/screenshots" 2>/dev/null
mv $SRC/day-05-* "$DEST/phase-2-core-infrastructure/gov-admin/screenshots" 2>/dev/null

# -----------------------------
# Phase 3 - Gov-App (Days 6+)
# -----------------------------

mkdir -p "$DEST/phase-3-application-integration/gov-app/screenshots"

mv $SRC/day6-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day7-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day8-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day9-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day10-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day11-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day12-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day13-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day14-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day15-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day16-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day17-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day18-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day19-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day20-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day21-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day22-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day23-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day24-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day25-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day26-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day27-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day28-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day29-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day30-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null

mv $SRC/day-06-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-07-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-08-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-09-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-10-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-11-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-12-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-13-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-14-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-15-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-16-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-17-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-18-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-19-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-20-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-21-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-22-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-23-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-24-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-25-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-26-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-27-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-28-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-29-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null
mv $SRC/day-30-*   "$DEST/phase-3-application-integration/gov-app/screenshots" 2>/dev/null

# --------------------------
# Architecture Diagrams
# --------------------------

mkdir -p "$DEST/architecture/diagrams"

mv "$SRC"/*[Aa]rchitecture*.png "$DEST/architecture/diagrams/" 2>/dev/null
mv "$SRC"/*[Dd]iagram*.png "$DEST/architecture/diagrams/" 2>/dev/null
mv "$SRC"/*[Mm]ulti-*[Pp]hase*.png "$DEST/architecture/diagrams/" 2>/dev/null

echo "Import complete."

















