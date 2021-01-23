# environments-cache
__NOTE__ You *must* FORK this repository for it to work properly, or setup the origin main branch to point towards a repository where you have permissions. 

The included scripts automatically sets up a launchd job to cache all your conda environments to yaml files and store them remotely in this github repository. The script is set to update the repository at 3AM local time by default.

## Requirements
- macOS
- Conda (You must have a $CONDA_PREFIX environment variable)

## Setup
- First __fork__ this repository to your Github profile
```bash
git clone https://github.com/*YOUR_USERNAME*/environments_cache.git
cd environments_cache
bash setup_envs_backup.sh
```

After running setup, you should see log files and your forked repository should contain your YAML files under environments_cache/envs locally and on Github.

## Remove plist
```bash
bash remove_backup_job.sh
```