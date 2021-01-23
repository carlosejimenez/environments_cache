# environments-cache
__NOTE__ You *must* FORK this repository for it to work properly, or setup the origin main branch to point towards a repository where you have permissions. 

The included scripts automatically sets up a launchd job to regularly cache all your conda environments to yaml files and store them remotely in a github repository. This can be useful when you need to copy an environment that you have on a personal computer, but don't have access to remotely. Or, when setting up a new computer, it can be nice to have access to old environments which you may not be able to conveniently transfer.

## Setup
```bash
bash setup_envs_backup.sh
```

## Remove plist
```bash
bash remove_backup_job.sh
```