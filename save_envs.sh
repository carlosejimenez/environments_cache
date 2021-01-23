#!/bin/bash
ENV_NAMES=$($CONDA_CMD env list | cut -d " " -f1 | tail -n +4)

eval "$($CONDA_CMD shell.bash hook)"
[ -d envs ] || mkdir envs  # mkdir envs dir if it doesn't exist
for ENV in $ENV_NAMES
do
	$CONDA_CMD env export -n $ENV > envs/$ENV.yml
done

# push to git
git add envs/*.yml
if ! git diff-index --quiet HEAD --; then
    git commit -m "backup from launchd" && git push origin master
fi
