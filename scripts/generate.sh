#!/usr/bin/env bash

set -u -e

go install git.sr.ht/~icikowski/vanitygen@main

export VANITYGEN_OUT=public
export VANITYGEN_CONFIG=config.yaml
export VANITYGEN_FORMAT=bootstrap

rm -rf ${VANITYGEN_OUT}

vanitygen

echo "go.tobuf.dev" > ${VANITYGEN_OUT}/CNAME