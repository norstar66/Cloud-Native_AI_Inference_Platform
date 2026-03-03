#!/usr/bin/env bash
set -euo pipefail

echo "Bootstrap: create python venv and install app deps"
cd "$(dirname "$0")/../app"
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "Done. Activate with: source app/.venv/bin/activate"
