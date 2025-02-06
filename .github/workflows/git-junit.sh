#!/bin/bash
set -euo pipefail


./gradlew cleanTest test \
  --parallel --max-workers=3 --configure-on-demand --console plain -Pqa
