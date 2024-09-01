#!/bin/bash

# set -x

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

echo "-=-=-=- Run mkdocs -=-=-=-"

cd $SCRIPTPATH

[ -d ".venv" ] || python3 -m virtualenv .venv

. .venv/bin/activate

[ "x$(which mkdocs)" == "x" ] && pip install mkdocs mkdocs-material mkdocs-material-extensions

mkdocs --version

mkdocs serve --no-livereload  # -a 127.0.0.1:8000

deactivate
