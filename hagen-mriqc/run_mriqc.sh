#!/bin/bash

#read from CLI
sub_id=$1

# TODO: define needed directories
bids_dir="/Users/kenziepaige/Projects/2025-Neurohackademy/PNC_BIDS"
output_dir="/Users/kenziepaige/Projects/2025-Neurohackademy/derivatives/mriqc"


docker run -v $bids_dir:/bids_dir \
	-v $output_dir:/output_dir \
	nipreps/mriqc:latest \
	/bids_dir \
	/output_dir \
	participant \
	--participant_label $sub_id \

