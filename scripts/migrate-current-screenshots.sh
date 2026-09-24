#!

set -u

REPO_DIR="$HOME/rhel-govtech-multi.nodal-infrastructure"

SRC1="$REPO_DIR/screenshots/phase-1-auth"
SRC2="$REPO_DIR/screenshots/phase-2-multinode"

DEST1="$REPO_DIR/phase-1-foundation/screenshots"
DEST2="$REPO_DIR/phase-2-core-infrastructure/gov-admin/screenshots"
DEST3="$REPO_DIR/phase-3-application-integration/gov-app/screenshots"
UNMATCHED="$REPO_DIR/screenshots/unmatched"

mkdir -p "$DEST1" "$DEST3" "$DEST2" "$UNMATCHED"

shopt -s nullglob

extract_day() {
	local name
	name="$(basename "$1" | tr '[:upper:]' '[:lower:]')"

	if [[ "$name" =~ day[-_]?([0-9]+) ]]; then
		echo "${BASH_REMATCH[1]}"
		return
	fi

	if [[ "$name" =~ ^d[-_]?([0-9]+) ]]; then
                echo "${BASH_REMATCH[1]}"
                return
	fi

	echo ""
}

unique_name() {
	local target_dir="$1"
	local original_name="$2"

	local base ext candidate n
	base="${original_name%.*}"
	ext="${original_name##*.}"
	candidate="$original_name"
	n=1

	while [[ -e "$target_dir/$candidate" ]]; do
		candidate="${base}_$n.$ext"
		n=$((n + 1))
	done

	echo "$candidate"
}

move_one() {
	local file="$1"
	local day
	local name
	local target
	local final_name

	day="$(extract_day "$file")"
	name="$(basename "$file")"

	if [[ -n "$day" ]]; then
		if (( day >= 1 && day <= 3 )); then
			target="$DEST1"
		elif (( day >= 4 && day <= 6 )); then
                        target="$DEST2"
		elif (( day >= 7 && day <= 30 )); then
                        target="$DEST3"
		else 
                        target="$UNMATCHED"
		fi
	else
		target="$UNMATCHED"
	fi

	final_name="$(unique_name "$target" "$name")"
	mv "$file" "$target/$final_name"
	echo "Moved: $name -> $target/$final_name"
}

process_dir() {
	local dir="$1"

	if [[ ! -d "$dir" ]]; then
		echo "Skipping missing directory: $dir"
		return
	fi

	for file in "$dir"/*.png; do
		[[ -e "$file" ]] || continue
		move_one "$file"
	done
}

process_dir "$SRC1"
process_dir "$SRC2"

echo
echo "Done migrating screenshots."
		




