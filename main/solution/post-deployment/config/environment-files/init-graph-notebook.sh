#!/bin/bash
sudo -u ec2-user -i <<'EOF'
              
    echo "export GRAPH_NOTEBOOK_AUTH_MODE=DEFAULT" >> ~/.bashrc
    echo "export GRAPH_NOTEBOOK_HOST=nyu-neptune.cluster-cnfpwwtkftli.us-east-1.neptune.amazonaws.com" >> ~/.bashrc
    echo "export GRAPH_NOTEBOOK_PORT=8182" >> ~/.bashrc
    echo "export NEPTUNE_LOAD_FROM_S3_ROLE_ARN=" >> ~/.bashrc
    echo "export AWS_REGION=us-east-1" >> ~/.bashrc
    
    aws s3 cp s3://aws-neptune-notebook/graph_notebook.tar.gz /tmp/graph_notebook.tar.gz
    rm -rf /tmp/graph_notebook
    tar -zxvf /tmp/graph_notebook.tar.gz -C /tmp
    /tmp/graph_notebook/install.sh
    pip install ipykernel==6.23.0
EOF