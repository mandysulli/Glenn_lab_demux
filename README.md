# Glenn_lab_demux
Protocol for demultiplexing in the Glenn Lab

STACKS is used to demultiplex our data more information can be found on the STACKS website:
https://catchenlab.life.illinois.edu/stacks/comp/process_radtags.php

Two ways to demultiplex:
1. Dual barcodes - with i7 and i5 barcodes
2. Single barcodes - with just i7 barcodes

To run the scripts here you will need to:
1. create a working directory
2. Move demux script, barcodes and raw un-demultiplexed fastq files into the working directory. 
3. Update the demultiplex script to match your directory and file names
4. Run the script

This can take over two days to run if it is a NovaSeq

Tag Orientation by Instrument (as of Dec 2023):
Miseq:
i7 - forward
i5 - foward

NextSeq:
i7 - forward
i5 - reverse compliment

NovaSeq:
i7 - forward
i5 - reverse compliment

HiSeq:
i7 - forward
i5 - reverse compliment