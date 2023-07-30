#!/bin/bash
if [ "$1" = "-h" -o "$1" = "--help" ]; then
    echo 'usage: ./get_issue.sh issue_id'
    echo ''
    echo 'positional arguments:'
    echo '  issue_id        GitHub issue id'
else
    ISSUE_ID=$1
    curl -s https://api.github.com/repos/RibbonCMS/RibbonCMS.github.io/issues/$ISSUE_ID | jq -r .title >| issue/title.txt
    curl -s https://api.github.com/repos/RibbonCMS/RibbonCMS.github.io/issues/$ISSUE_ID | jq -r .number >| issue/issue_id.txt
    curl -s https://api.github.com/repos/RibbonCMS/RibbonCMS.github.io/issues/$ISSUE_ID | jq -r .body >| issue/body.txt
    curl -s https://api.github.com/repos/RibbonCMS/RibbonCMS.github.io/issues/$ISSUE_ID | jq -r .labels >| issue/labels.txt
    date +'%Y-%m-%dT%H:%M:%SZ' >| issue/labeled_at.txt

    echo 'Done.'
fi
