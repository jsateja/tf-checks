#!/bin/bash

# Make script exit on first error
set -e

# Check if act is installed
if ! command -v act &> /dev/null; then
    echo "Error: 'act' is not installed. Please install it first:"
    echo "macOS: brew install act"
    echo "Linux: curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash"
    exit 1
fi

# Default event is push
EVENT="${1:-push}"

# Run specific job or all jobs
JOB="${2:-}"

echo "🚀 Running GitHub Actions locally with event: $EVENT"

if [ -n "$JOB" ]; then
    echo "👉 Running specific job: $JOB"
    act "$EVENT" --job "$JOB" --bind
else
    echo "👉 Running all jobs"
    act "$EVENT" --bind
fi 