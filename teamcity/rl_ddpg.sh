#!/usr/bin/env bash

# Cause the script to exit if a single command fails
set -eo pipefail -v


bash ./teamcity/rl_.sh

echo "./bin/tests/check_rl_ddpg.sh"
OMP_NUM_THREADS="1" MKL_NUM_THREADS="1" bash ./bin/tests/check_rl_ddpg.sh