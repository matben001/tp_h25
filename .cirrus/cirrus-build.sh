#!/bin/bash
set -euo pipefail



./gradlew build \
	-DbuildNumber="$BUILD_NUMBER" \
	-x test \
	--parallel --console plain --build-cache


