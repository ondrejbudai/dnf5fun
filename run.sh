#!/bin/bash

function checkNM() {
    if grep -q "NetworkManager" "$1"; then
        echo "NetworkManager found in $1"
    else
        echo "NetworkManager not found in $1"
    fi
}

set -euo pipefail

echo DNF4

OSBUILD_SOLVER_CONFIG=use-dnf5-false.json /usr/libexec/osbuild-depsolve-dnf <./request.json | jq . >result-dnf4.json
OSBUILD_SOLVER_CONFIG=use-dnf5-false.json /usr/libexec/osbuild-depsolve-dnf <./request2.json | jq . >result2-dnf4.json

checkNM result-dnf4.json
checkNM result2-dnf4.json

echo DNF5

OSBUILD_SOLVER_CONFIG=use-dnf5-true.json /usr/libexec/osbuild-depsolve-dnf <./request.json | jq . >result-dnf5.json
OSBUILD_SOLVER_CONFIG=use-dnf5-true.json /usr/libexec/osbuild-depsolve-dnf <./request2.json | jq . >result2-dnf5.json

checkNM result-dnf5.json
checkNM result2-dnf5.json

