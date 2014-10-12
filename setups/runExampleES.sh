#!/bin/sh -v -x

# -v and -x are debugging option echoing the command before and after expansion. Useful for the first time run

# To be portable, the script expects absolute path to the ElasticSearch install directory in ES_INSTALL environmental variable (probably as 'export ES_INSTALL=/x/y/z' or equivalent in the shell's profile)

# First parameter is the name of the example directory. ElasticSearch specific example is expected to be in the 'elasticsearch' directory under that (next to 'solr' directory)
# The funky braced expression removes trailing slash to make it easier to work with auto-complete that adds it

EXAMPLE_NAME=${1%/}
cd $EXAMPLE_NAME/elasticsearch
$ES_INSTALL/bin/elasticsearch -Des.config=config/elasticsearch.yml -Des.default.node.name=$EXAMPLE_NAME

