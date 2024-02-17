#!/bin/bash
#SBATCH --job-name=dbcan_JZ
#SBATCH -p cpu
#SBATCH --cpus-per-task=12
#SBATCH --mem=32GB
#SBATCH --output=/home/users/twoje_imie/db_output_bakterie1/%A_%a.out
#SBATCH --error=/home/users/jzygmuntowicz/db_output_bakterie1/%A_%a.err
#SBATCH --array=1-180%10
#SBATCH -w edi06

CONDA_PREFIX="/home/users/jzygmuntowicz/anaconda3/etc/profile.d/conda.sh"

katalog="/home/users/twoje_imie/bakterie1"

plik="${SLURM_ARRAY_TASK_ID}.faa"

sciezka="${katalog}/${plik}"


. $CONDA_PREFIX
conda activate Shire
run_dbcan $sciezka protein --out_dir /home/users/jzygmuntowicz/output_bakterie1/${SLURM_ARRAY_TASK_ID}_output_bakterie1
