#!/usr/bin/env bash
# sudo -u ec2-user -i <<'EOF'

source activate JupyterSystemEnv

echo "Installing ipykernel 6.16.2"
pip install "ipykernel==6.16.2"

echo "Installing jupyter-console 6.6.3"
pip install "jupyter-console==6.6.3"

echo "Finished installed ipykernel and jupyter-console"

# EOF

exit 0