#!/bin/bash

# todo: consider other repos, python backend wouldn't use node_modules
# todo: consider implementation in the workflow, when is this script run?

# This script is to be run from the root dir of a repository.
# It creates, a new table of contents file for each


touch auto_toc.md

dirname=${PWD##*/}
TABLE_HEADER="| Documentation for $dirname | "
echo $TABLE_HEADER > auto_toc.md
echo '|---|' >> auto_toc.md

# if the name is README.md then let the name of the link

for md in `find . -name '*.md' -not -path '*node_modules*'`
do
    echo '| [test]('$md') |' >> auto_toc.md
done
cat auto_toc.md
exit