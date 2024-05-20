#!/bin/bash
#SBATCH --job-name=Demux_TCG##
#SBATCH --partition=highmem_p
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem-per-cpu=15gb
#SBATCH --time=72:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=myid@uga.edu

##Created 11.27.2023
#loading the software in the cluster
module load Stacks/2.62-foss-2022a

#Running the process_radtagas pipeline

cd /file/path/to/working/directory

#This is the folder the fastq files will write to
mkdir /file/path/to/working/directory/demultiplex_single

process_radtags -P -1 ./Raw_undemultiplexed_R1.fq.gz -2 ./Raw_undemultiplexed_R2.fq.gz -b ./TCG_single_barcode.txt -r --index_null --disable_rad_check --retain_header --filter_illumina -o /demultiplex_single/ -i gzfastq
