#### Restic Useful Scripts

Restic is a useful tool to manage system backups. This repository contains some useful bash scripts for automating and simplifying restic processes.

---

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