#!/usr/bin/env sh
set -e

cur_dir=$( cd "$( dirname "$0" )" && pwd )
source_repo="https://github.com/skluck/skill-survey"
cloned_dir="$cur_dir/source"
target_ref="master"

git clone $source_repo "$cloned_dir"

if [ -n "$1" ]; then
    target_ref="$1"
fi

echo ">> Checking out $target_ref"
cd "$cloned_dir" && git checkout "$target_ref" && cd ..

current_commit=$(git rev-parse HEAD)
echo ">> Commit hash: $current_commit"

rm -rf "$cloned_dir/.git"
cp -R "$cloned_dir/" "$cur_dir"

echo ">> Removing $cloned_dir"
rm -rf "$cloned_dir"
