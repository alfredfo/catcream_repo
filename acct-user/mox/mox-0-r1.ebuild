# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for the mail-mta/mox e-mail server"
ACCT_USER_ID=-1
ACCT_USER_HOME=/var/lib/mox
ACCT_USER_HOME_PERMS=0755
ACCT_USER_GROUPS=( mox )

acct-user_add_deps
