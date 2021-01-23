# environments-cache
__NOTE__ You *must* either FORK this repository, or create a new repository under your own username, for it to work properly. 

The included scripts automatically sets up a launchd job to cache all your conda environments to yaml files and store them remotely in this Github repository. The script is set to update the repository at 3AM local time by default.

## Requirements
- macOS
- Conda (You must have a $CONDA_PREFIX environment variable)
- If your new repository is private, your Github credentials must be stored somehow

## Setup
- If you  __fork__ this repository to your Github profile
  - ```bash
    git clone https://github.com/*YOUR_USERNAME*/environments_cache.git
    cd environments_cache
    bash setup_envs_backup.sh
    ```
- If you create a new repository
  - Create a new repository in Github called `new_environments_cache`
  - ```bash
    git clone https://github.com/carlosejimenez/environments_cache.git new_environments_cache
    cd new_environments_cache
    git remote set-url origin https://github.com/*YOUR_USERNAME*/new_environments_cache
    git remote add upstream https://github.com/carlosejimenez/environments_cache
    git push origin master 
    bash setup_envs_backup.sh
    ```

After running setup, you should see log files and your forked repository should contain your YAML files under environments_cache/envs locally and on Github.

## Remove plist
```bash
bash remove_backup_job.sh
```