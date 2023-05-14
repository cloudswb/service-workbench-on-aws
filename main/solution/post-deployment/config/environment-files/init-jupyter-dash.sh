#!/usr/bin/env bash

# source activate JupyterSystemEnv

echo "Installing ipykernel 6.16.2"
python3 -m python3 -m  install "ipykernel==6.16.2"

echo "Installing jupyter-console 6.6.3"
python3 -m pip install "jupyter-console==6.6.3"

echo "Finished installed ipykernel and jupyter-console"

exit 0