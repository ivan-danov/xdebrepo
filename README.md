# XDebRepo

Custom signed debian repository organizer

## Create deb package
make deb

## Install deb package
apt install ./xdebrpo_<VERSION>_all.deb

## Use program

**xdebrepo** init <repo path> <conf path>
Init xdebrpo. Create /etc/xdebrepo/xdebrepo.conf.

**xdebrepo** key gen <gpg dir> <owner name> <owner email>
Generate GnuPG key. <gpg dir> is relative to <conf path>.

**xdebrepo** key list <gpg dir>
List generated GnuPG key. <gpg dir> is relative to <conf path>.

**xdebrepo** repo create <repodir> <gpg dir> <key>
Create a new repository.
<repodir> is relative to <repo path>.
<gpg dir> is relative to <conf path>.
<key> is a GnuPG key id to sign repository.

**xdebrepo** repo repo destroy <repodir>
Destroy repository.
<repodir> is relative to <repo path>.

**xdebrepo** repo aptconf <repodir>"
Generate apt config file for repository.
<repodir> is relative to <repo path>.

**xdebrepo** repo pubkey <repodir>"
Show public key for repository.
<repodir> is relative to <repo path>.

**xdebrepo** repo add <repodir> <distname> <deb file>"
Add a deb file to repository.
<repodir> is relative to <repo path>.

**xdebrepo** repo del <repodir> <distname> <package name>"
Delete package from repository.
<repodir> is relative to <repo path>.

**xdebrepo** repo list <repodir> [distname]
List packages in repository.
<repodir> is relative to <repo path>.
