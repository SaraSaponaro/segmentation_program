#!/bin/bash

# See this stackoverflow question
# http://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
# for the magic in this command
SETUP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#
# Base package root. All the other releavant folders are relative to this
# location.
#
export SEGMENTATION_PROGRAM_ROOT=$SETUP_DIR
echo "SEGMENTATION_PROGRAM_ROOT set to " $SEGMENTATION_PROGRAM_ROOT

#
# Add the root folder to the $PYTHONPATH so that we can effectively import
# the relevant modules.
#
export PYTHONPATH=$SEGMENTATION_PROGRAM_ROOT:$PYTHONPATH
echo "PYTHONPATH set to " $PYTHONPATH
