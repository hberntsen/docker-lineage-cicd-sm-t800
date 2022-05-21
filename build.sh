#!/bin/bash
set -euo pipefail

docker build -t lineage .
docker run \
  -v "$(pwd)/build/lineage:/srv/src" \
  -v "$(pwd)/build/zips:/srv/zips" \
  -v "$(pwd)/build/logs:/srv/logs" \
  -v "$(pwd)/build/cache:/srv/ccache" \
  -v "$(pwd)/build/keys:/srv/keys" \
  -v "$(pwd)/build/manifests:/srv/manifests" \
  -it \
  --entrypoint /bin/bash \
  lineage
