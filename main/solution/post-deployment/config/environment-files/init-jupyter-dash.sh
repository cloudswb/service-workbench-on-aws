#!/bin/bash
sudo -u ec2-user -i <<'EOF'

echo "activate JupyterSystemEnv"
source activate JupyterSystemEnv

echo "Installing ipykernel 6.16.2"
python3 -m pip install "ipykernel==6.16.2"

echo "Installing jupyter-console 6.6.3"
python3 -m pip install "jupyter-console==6.6.3"

echo "Finished installed ipykernel and jupyter-console"

# exit 0

EOF