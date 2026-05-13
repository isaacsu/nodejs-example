#!/usr/bin/env sh

buildkite-agent cache restore
npm install
buildkite-agent cache save
npm test
