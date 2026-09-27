#!/bin/bash -eu

usage() {
  echo "usage: $0 <clone|pull> <repos-file> <destination>" >&2
  exit 2
}

[[ $# -eq 3 ]] || usage

REPOS_FILE=$2
DEST=$3

mkdir -p "$DEST"

git config --global credential.helper "cache --timeout=120"
trap "git config --global --unset credential.helper" EXIT

case "$1" in
  clone)
    while IFS= read -r repo; do
      [[ -z "$repo" ]] && continue

      if [[ -d "$DEST/$repo/.git" ]]; then
        echo "$DEST/$repo already exists."
      else
        git clone \
          "https://github.com/grayespinoza/$repo.git" \
          "$DEST/$repo"
      fi
    done < "$REPOS_FILE"
    ;;

  pull)
    while IFS= read -r repo; do
      [[ -z "$repo" ]] && continue

      if [[ -d "$DEST/$repo/.git" ]]; then
        git -C \
          "$DEST/$repo" \
          pull
      else
        echo "$DEST/$repo does not exist."
      fi
    done < "$REPOS_FILE"
    ;;

  *)
    echo "$0: $1 is not a $0 command." >&2
    exit 2
    ;;
esac
