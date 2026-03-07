#!/bin/bash

# A single purpose script to move assets to the various locations they're needed.
#
# This isn't that automated, but this is rarely actually going to be run, sooooo (it's mainly there
# for usage in CI to make sure different bits don't get different assets)
#
# IMPORTANT: Always run from the repo root dir

echo "Syncing submodules"
git submodule sync rustcast-cross

ls ./rustcast-cross/assets

echo "Copying into site/assets"
cp ./rustcast-cross/assets/icon/icon_opt.svg site/assets/
cp ./rustcast-cross/assets/icon/icon64.png site/assets/

echo "Finished copying"