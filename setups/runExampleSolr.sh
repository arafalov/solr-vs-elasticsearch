#!/bin/sh -v -x

# -v and -x are debugging option echoing the command before and after expansion. Useful for the first time run

# To be portable, the script expects absolute path to the Solr install directory in SOLR_INSTALL environmental variable (probably as 'export SOLR_INSTALL=/x/y/z' or equivalent in the shell's profile)

# First parameter is the name of the example directory. Solr specific example is expected to be in the 'solr' directory under that (next to 'elastisearch' directory)
# The funky braced expression removes trailing slash to make it easier to work with auto-complete that adds it

EXAMPLE_NAME=${1%/}
EXAMPLE_FULL_PATH=$PWD/$EXAMPLE_NAME/solr
cd $SOLR_INSTALL/example
java -Dsolr.solr.home=$EXAMPLE_FULL_PATH -jar start.jar
