#!/bin/bash

# Check if conda is installed
if ! command -v conda &> /dev/null; then
    echo "conda not found. Please install Miniconda or Anaconda."
    exit 1
fi

# Activate conda environment (if needed)
# conda activate your_environment_name

# Update conda configuration to exclude the problematic channel
conda config --remove channels https://conda.anaconda.org

# Install wget using conda
conda install -c conda-forge wget

# Deactivate conda environment (if activated)
# conda deactivate

echo "wget has been installed using conda."
