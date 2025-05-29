# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for www-apps/alps webmail"
ACCT_USER_ID=-1
ACCT_USER_HOME=/var/lib/alps
ACCT_USER_HOME_PERMS=0755
ACCT_USER_GROUPS=( alps )

acct-user_add_deps
