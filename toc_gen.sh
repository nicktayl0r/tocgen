#!/bin/bash

# todo: consider implementation in the workflow, when is this script run?

# todo: set the script to run ina dir of choice
# todo: let name include the parent dir when the basename is generic
# todo: exculde the autotod.md from itself


touch auto_toc.md

dirname=${PWD##*/}
TABLE_HEADER="| Documentation for $dirname | "
echo $TABLE_HEADER > auto_toc.md
echo '|---|' >> auto_toc.md


for md in `find . -name '*.md' -not -path '*node_modules*'`
do
    if [ ${md: -3} == ".md" ]
    then
        filename=$(basename "$md")
        filename=${filename##*/}

        echo "| [${filename%.md}]($md) |" >> auto_toc.md
    fi
done