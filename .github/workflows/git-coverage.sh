#!/bin/bash
set -euo pipefail


./gradlew jacocoTestReport \
  --parallel --max-workers=3 --configure-on-demand --console plain -Pqa
