#!/bin/ksh -p
#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#

#
# Copyright 2007 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#

#
# Copyright (c) 2013 by Delphix. All rights reserved.
# Copyright (c) 2016, Intel Corporation.
#

. $STF_SUITE/tests/functional/metadata/md.kshlib

#
# DESCRIPTION:
#	Replacing a metadata device and replacing a pool
#	device passes.
#

verify_runnable "global"

log_assert "Replacing a metadata device and a pool device is successful."
log_onexit cleanup

for type in "mirror"
do
	for option in "" "-f"
	do
		for ac_type in "metadata" "smallblks"
		do
			for mdtype in "mirror"
			do
				log_must $ZPOOL create $TESTPOOL $option $type $ZPOOL_DISKS \
				    $ac_type  $mdtype $MD_DISKS
				log_must $ZPOOL replace $option $TESTPOOL $MD_DISK1 $MD_EXTRA1
				log_must $SLEEP 10
				log_must $ZPOOL iostat -H $TESTPOOL $MD_EXTRA1
				log_must $ZPOOL replace $option $TESTPOOL $ZPOOL_DISK0 $MD_DISK1
				log_must $ZPOOL iostat -H $TESTPOOL $MD_DISK1
				log_must $ZPOOL destroy $option $TESTPOOL
			done
		done
	done
done

log_pass "Replacing a metadata device and a pool device is successful."
