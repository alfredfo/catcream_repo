# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for the app-admin/ntfy server"
ACCT_USER_ID=-1
ACCT_USER_HOME=/var/lib/ntfy
ACCT_USER_HOME_PERMS=0755
ACCT_USER_GROUPS=( ntfy )

acct-user_add_deps
