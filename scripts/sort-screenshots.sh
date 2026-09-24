#!/bin/bash

set -u

SOURCE_DIR="$HOME/win-screenshots"
REPO_DIR="$HOME/rhel-govtech-multi.nodal-infrastructure"

PHASE1_DIR="$REPO_DIR/phase-1-foundation/screenshots"
PHASE2_DIR="$REPO_DIR/phase-2-core-infrastructure/gov-admin/screenshots"
PHASE3_DIR="$REPO_DIR/phase-3-application-integration/gov-app/screenshots"
UNMATCHED_DIR="$REPO_DIR/screenshots/unmatched"

mkdir -p "$PHASE1_DIR"
mkdir -p "$PHASE2_DIR"
mkdir -p "$PHASE3_DIR"
mkdir -p "$UNMATCHED_DIR"

shopt -s nullglob nocaseglob

extract_day() {
	local filename
	filename="$(basename "$1" | tr '[:upper:]' '[:lower:]')"

	if [[ "$filename" =~ day[-_]?(0-9]+) ]]; then
		echo "${BASH_REMATCH[1]}"
		return
	fi

	if [[ "$filename" =~ ^d[-_]?(0-9]+) ]]; then
                echo "${BASH_REMATCH[1]}"
                return
	fi

	echo ""
}

make_unique_name() {
	local target_dir="$1"
	local original_name="$2"

	local base ext candidate count
	base="${original_name%.*}"
	ext="${original_name##*.}"
	candidate="$original_name"
	count=1

	while [[ -e "$target_dir/$candidate" ]]; do
		candidate="${base}_$count.$ext"
		count=$((count +1))
	done

	echo "$candidate"
}

move_file() {
	local file="$1"
	local day_num="$2"
	local original_name
	local target_dir
	local safe_name

	original_name="$(basename "$file")"

	if [[ -n "$day_num" ]]; then
		if (( day_num >= 1 && day_num <= 3 )); then
			target_dir="$PHASE1_DIR"
		elif (( day_num >= 4 && day_num <= 6 )); then
			target_dir="$PHASE2_DIR"
		elif (( day_num >= 7 && day_num <= 30 )); then
                        target_dir="$PHASE3_DIR"
		else 
                        target_dir="$UNMATCHED_DIR"
		fi
	else
		target_dir="$UNMATCHED_DIR"
	fi

	safe_name="$(make_uniqe_name "$target_dir" "$original_name")"
	mv "$file" "$target_dir/$safe_name"
	echo "Moved: $original_name -> $target_dir/$safe_name"
}

for file in "$SOURCE_DIR"/*.{png,jpg,jpeg,webp}; do
	[[ -e "$file" ]] || continue
	day_num="$(extract_day "$file")"
	move_file "$file" "$day_num"
done

echo
echo "Done sorting screenshots."

