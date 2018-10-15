#!/bin/bash

# todo: consider other repos, python backend wouldn't use node_modules
# todo: consider implementation in the workflow, when is this script run?

# This script is to be run from the root dir of a repository.
# It creates, a new table of contents file for each


touch auto_toc.md

TABLE_HEADER='Documentation for '


# if the name is README.md then let the name of the link

autotoc() {
    touch autotoc.md
    for md in `find . -name '*.md' -not -path '*node_modules*'`
    do
        echo $md
    done
}


