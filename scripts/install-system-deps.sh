#!/usr/bin/env bash
set -euo pipefail

echo "Installing system dependencies for R and Quarto (Debian/Ubuntu)..."
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
  build-essential libssl-dev libcurl4-openssl-dev libxml2-dev libgit2-dev \
  pandoc pandoc-citeproc \
  libfontconfig1-dev

echo "You may also want to install Quarto from https://quarto.org/docs/get-started/"
