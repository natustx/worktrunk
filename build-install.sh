#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
echo "Building worktrunk (wt)..."
cargo build --release
mkdir -p ~/prj/util/bin
cp target/release/wt ~/prj/util/bin/
echo "Installed: $(~/prj/util/bin/wt --version)"
