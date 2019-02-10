# Nextcloud Server

The `docker-compose.yml` file is based on the examples on the official docker page, except set
to use postgres instead of MySQL.

## SSL Note

This config depends on an already available `nginx-proxy` and `lets-encrypt` config like the one
in the `nginx-reverse-proxy` config in the repo

## DB Setup Caveats

Usernames shouldn't have special characters, keep it simple. (For some reason there's no good validation from my experience)

You should not let the MySQL or Postgres docker container to create the `nextcloud` database. Just don't create
a db or pass a phony db name. `nextcloud` will create the correct databases and tables on setup.

## Storage Setup
Since the server it's hosted on has limited storage, if a NAS server is available you can
leverage the Nextcloud external storage feature. Special care should be taken to isolate
the Nextcloud server from the NAS.

### SFTP Isolation Example

For example, you can create special users on the NAS server that are limited to an
SFTP jail. To further limit it, you can set up multiple repositories on the same NAS
with different accounts and SSH Keys.

Resources:
- https://wiki.archlinux.org/index.php/SFTP_chroot
- https://docs.nextcloud.com/server/stable/admin_manual/configuration_files/external_storage/ftp.html

