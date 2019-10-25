#!/bin/sh

set -euo pipefail

TESTDIR="$(dirname "${0}")"

if [ -z "${1:-}" ]; then
  echo "Usage: $0 FULLY_QUALIFIED_PACKAGE_IDENT"
fi

TEST_PKG_IDENT="$1"

hab pkg install core/bats --binlink
hab pkg install "$TEST_PKG_IDENT"

export TEST_PKG_IDENT
bats "${TESTDIR}/tests.bats"
