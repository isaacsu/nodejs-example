#!/usr/bin/env sh
export BUILDKITE_CACHE_BUCKET_URL="s3://isaac-bucket/prefix?endpoint=http://localhost:9000&use_path_style=true"

buildkite-agent cache restore
npm install
buildkite-agent cache save
npm test
