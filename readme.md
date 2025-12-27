#### Restic Useful Scripts

This repository is to share a few useful bash scripts to automate and simplify the restic processes.

#### General Config

Every scripts from this repository needs a **restic.env** file with the following structure:

```shell
export RESTIC_REPOSITORY="repo-path"
export RESTIC_PASSWORD="repo-password"
```

Before use any script, you need an existing repository. To create the repository, export restic.env, and run command: restic init

---

#### Backup Config

The backup.bash script needs **backup_cfg.bash**, please setup the following variables:

- **BACKUP_ROOT**

- **BACKUP_CONFIG**

---

#### Restore Config

The restore.bash script needs **restore_cfg.bash**, please setup the following variables:

- **RESTORE_TARGET**

- **RESTORE_CONFIG**