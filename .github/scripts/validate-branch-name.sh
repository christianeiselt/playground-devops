#!/bin/sh

local_branch=$GITHUB_REF_NAME
echo "local_branch $local_branch"

valid_branch_regex="^(bugfix|feature|hotfix|maintenance|release)\/[A-Z]+-[0-9]+_[A-Za-z0-9-]+$"

message="Branch name '$local_branch' doesn't adhere to this contract: $valid_branch_regex."

if [ $local_branch !~ $valid_branch_regex ]
then
    echo "$message"
    exit 1
else
    echo "OK $local_branch"
fi

exit 0
