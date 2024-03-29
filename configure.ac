/*
 * This file is part of the ZFS Linux port.
 *
 * Copyright (c) 2009 Lawrence Livermore National Security, LLC.
 * Produced at Lawrence Livermore National Laboratory
 * Written by:
 *         Brian Behlendorf <behlendorf1@llnl.gov>,
 *         Herb Wartens <wartens2@llnl.gov>,
 *         Jim Garlick <garlick@llnl.gov>
 * LLNL-CODE-403049
 *
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License, Version 1.0 only
 * (the "License").  You may not use this file except in compliance
 * with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

AC_INIT(m4_esyscmd(grep Name META | cut -d ':' -f 2 | tr -d ' \n'),
	m4_esyscmd(grep Version META | cut -d ':' -f 2 | tr -d ' \n'))
AC_LANG(C)
ZFS_AC_META
AC_CONFIG_AUX_DIR([config])
AC_CONFIG_MACRO_DIR([config])
AC_CANONICAL_SYSTEM
AM_MAINTAINER_MODE
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])
AM_INIT_AUTOMAKE([subdir-objects])
AC_CONFIG_HEADERS([zfs_config.h], [
	(mv zfs_config.h zfs_config.h.tmp &&
	awk -f ${ac_srcdir}/config/config.awk zfs_config.h.tmp >zfs_config.h &&
	rm zfs_config.h.tmp) || exit 1])

AC_PROG_INSTALL
AC_PROG_CC
AC_PROG_LIBTOOL
AM_PROG_AS
AM_PROG_CC_C_O

ZFS_AC_LICENSE
ZFS_AC_PACKAGE
ZFS_AC_CONFIG
ZFS_AC_DEBUG
ZFS_AC_DEBUG_DMU_TX

AC_CONFIG_FILES([
	Makefile
	udev/Makefile
	udev/rules.d/Makefile
	etc/Makefile
	etc/init.d/Makefile
	etc/zfs/Makefile
	etc/systemd/Makefile
	etc/systemd/system/Makefile
	etc/modules-load.d/Makefile
	man/Makefile
	man/man1/Makefile
	man/man5/Makefile
	man/man8/Makefile
	lib/Makefile
	lib/libspl/Makefile
	lib/libspl/asm-generic/Makefile
	lib/libspl/asm-i386/Makefile
	lib/libspl/asm-x86_64/Makefile
	lib/libspl/include/Makefile
	lib/libspl/include/ia32/Makefile
	lib/libspl/include/ia32/sys/Makefile
	lib/libspl/include/rpc/Makefile
	lib/libspl/include/sys/Makefile
	lib/libspl/include/sys/dktp/Makefile
	lib/libspl/include/util/Makefile
	lib/libavl/Makefile
	lib/libefi/Makefile
	lib/libicp/Makefile
	lib/libnvpair/Makefile
	lib/libunicode/Makefile
	lib/libuutil/Makefile
	lib/libzpool/Makefile
	lib/libzfs/libzfs.pc
	lib/libzfs/libzfs_core.pc
	lib/libzfs/Makefile
	lib/libzfs_core/Makefile
	lib/libshare/Makefile
	cmd/Makefile
	cmd/zdb/Makefile
	cmd/zhack/Makefile
	cmd/zfs/Makefile
	cmd/zinject/Makefile
	cmd/zpool/Makefile
	cmd/zstreamdump/Makefile
	cmd/ztest/Makefile
	cmd/zpios/Makefile
	cmd/mount_zfs/Makefile
	cmd/fsck_zfs/Makefile
	cmd/zvol_id/Makefile
	cmd/vdev_id/Makefile
	cmd/arcstat/Makefile
	cmd/dbufstat/Makefile
	cmd/arc_summary/Makefile
	cmd/zed/Makefile
	cmd/raidz_test/Makefile
	cmd/draidcfg/Makefile
	contrib/Makefile
	contrib/bash_completion.d/Makefile
	contrib/dracut/Makefile
	contrib/dracut/02zfsexpandknowledge/Makefile
	contrib/dracut/90zfs/Makefile
	contrib/initramfs/Makefile
	module/Makefile
	module/avl/Makefile
	module/nvpair/Makefile
	module/unicode/Makefile
	module/zcommon/Makefile
	module/zfs/Makefile
	module/zpios/Makefile
	module/icp/Makefile
	include/Makefile
	include/linux/Makefile
	include/sys/Makefile
	include/sys/fs/Makefile
	include/sys/fm/Makefile
	include/sys/fm/fs/Makefile
	include/sys/crypto/Makefile
	include/sys/sysevent/Makefile
	scripts/Makefile
	scripts/zpios-profile/Makefile
	scripts/zpios-test/Makefile
	scripts/zpool-config/Makefile
	scripts/common.sh
	tests/Makefile
	tests/test-runner/Makefile
	tests/test-runner/cmd/Makefile
	tests/test-runner/include/Makefile
	tests/test-runner/man/Makefile
	tests/runfiles/Makefile
	tests/zfs-tests/Makefile
	tests/zfs-tests/cmd/Makefile
	tests/zfs-tests/cmd/chg_usr_exec/Makefile
	tests/zfs-tests/cmd/devname2devid/Makefile
	tests/zfs-tests/cmd/dir_rd_update/Makefile
	tests/zfs-tests/cmd/file_check/Makefile
	tests/zfs-tests/cmd/file_trunc/Makefile
	tests/zfs-tests/cmd/file_write/Makefile
	tests/zfs-tests/cmd/largest_file/Makefile
	tests/zfs-tests/cmd/mkbusy/Makefile
	tests/zfs-tests/cmd/mkfile/Makefile
	tests/zfs-tests/cmd/mkfiles/Makefile
	tests/zfs-tests/cmd/mktree/Makefile
	tests/zfs-tests/cmd/mmap_exec/Makefile
	tests/zfs-tests/cmd/mmapwrite/Makefile
	tests/zfs-tests/cmd/randfree_file/Makefile
	tests/zfs-tests/cmd/readmmap/Makefile
	tests/zfs-tests/cmd/rename_dir/Makefile
	tests/zfs-tests/cmd/rm_lnkcnt_zero_file/Makefile
	tests/zfs-tests/cmd/threadsappend/Makefile
	tests/zfs-tests/cmd/xattrtest/Makefile
	tests/zfs-tests/include/Makefile
	tests/zfs-tests/include/commands.cfg
	tests/zfs-tests/include/default.cfg
	tests/zfs-tests/tests/Makefile
	tests/zfs-tests/tests/functional/Makefile
	tests/zfs-tests/tests/functional/acl/Makefile
	tests/zfs-tests/tests/functional/acl/posix/Makefile
	tests/zfs-tests/tests/functional/atime/Makefile
	tests/zfs-tests/tests/functional/bootfs/Makefile
	tests/zfs-tests/tests/functional/cache/Makefile
	tests/zfs-tests/tests/functional/cachefile/Makefile
	tests/zfs-tests/tests/functional/casenorm/Makefile
	tests/zfs-tests/tests/functional/checksum/Makefile
	tests/zfs-tests/tests/functional/chattr/Makefile
	tests/zfs-tests/tests/functional/clean_mirror/Makefile
	tests/zfs-tests/tests/functional/cli_root/Makefile
	tests/zfs-tests/tests/functional/cli_root/zdb/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_clone/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_copies/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_create/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_destroy/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_get/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_inherit/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_mount/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_promote/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_property/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_receive/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_rename/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_reservation/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_rollback/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_send/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_set/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_share/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_snapshot/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_unmount/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_unshare/Makefile
	tests/zfs-tests/tests/functional/cli_root/zfs_upgrade/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_add/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_attach/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_clear/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_create/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_destroy/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_detach/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_expand/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_export/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_get/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_history/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_import/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_offline/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_online/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_remove/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_replace/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_scrub/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_set/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_status/Makefile
	tests/zfs-tests/tests/functional/cli_root/zpool_upgrade/Makefile
	tests/zfs-tests/tests/functional/cli_user/Makefile
	tests/zfs-tests/tests/functional/cli_user/misc/Makefile
	tests/zfs-tests/tests/functional/cli_user/zfs_list/Makefile
	tests/zfs-tests/tests/functional/cli_user/zpool_iostat/Makefile
	tests/zfs-tests/tests/functional/cli_user/zpool_list/Makefile
	tests/zfs-tests/tests/functional/compression/Makefile
	tests/zfs-tests/tests/functional/ctime/Makefile
	tests/zfs-tests/tests/functional/delegate/Makefile
	tests/zfs-tests/tests/functional/devices/Makefile
	tests/zfs-tests/tests/functional/exec/Makefile
	tests/zfs-tests/tests/functional/features/async_destroy/Makefile
	tests/zfs-tests/tests/functional/features/large_dnode/Makefile
	tests/zfs-tests/tests/functional/features/Makefile
	tests/zfs-tests/tests/functional/grow_pool/Makefile
	tests/zfs-tests/tests/functional/grow_replicas/Makefile
	tests/zfs-tests/tests/functional/history/Makefile
	tests/zfs-tests/tests/functional/inheritance/Makefile
	tests/zfs-tests/tests/functional/inuse/Makefile
	tests/zfs-tests/tests/functional/large_files/Makefile
	tests/zfs-tests/tests/functional/largest_pool/Makefile
	tests/zfs-tests/tests/functional/link_count/Makefile
	tests/zfs-tests/tests/functional/metadata/Makefile
	tests/zfs-tests/tests/functional/migration/Makefile
	tests/zfs-tests/tests/functional/mmap/Makefile
	tests/zfs-tests/tests/functional/mount/Makefile
	tests/zfs-tests/tests/functional/mv_files/Makefile
	tests/zfs-tests/tests/functional/nestedfs/Makefile
	tests/zfs-tests/tests/functional/no_space/Makefile
	tests/zfs-tests/tests/functional/nopwrite/Makefile
	tests/zfs-tests/tests/functional/online_offline/Makefile
	tests/zfs-tests/tests/functional/pool_names/Makefile
	tests/zfs-tests/tests/functional/poolversion/Makefile
	tests/zfs-tests/tests/functional/privilege/Makefile
	tests/zfs-tests/tests/functional/quota/Makefile
	tests/zfs-tests/tests/functional/raidz/Makefile
	tests/zfs-tests/tests/functional/redundancy/Makefile
	tests/zfs-tests/tests/functional/refquota/Makefile
	tests/zfs-tests/tests/functional/refreserv/Makefile
	tests/zfs-tests/tests/functional/rename_dirs/Makefile
	tests/zfs-tests/tests/functional/replacement/Makefile
	tests/zfs-tests/tests/functional/reservation/Makefile
	tests/zfs-tests/tests/functional/rootpool/Makefile
	tests/zfs-tests/tests/functional/rsend/Makefile
	tests/zfs-tests/tests/functional/scrub_mirror/Makefile
	tests/zfs-tests/tests/functional/slog/Makefile
	tests/zfs-tests/tests/functional/snapshot/Makefile
	tests/zfs-tests/tests/functional/snapused/Makefile
	tests/zfs-tests/tests/functional/sparse/Makefile
	tests/zfs-tests/tests/functional/threadsappend/Makefile
	tests/zfs-tests/tests/functional/tmpfile/Makefile
	tests/zfs-tests/tests/functional/truncate/Makefile
	tests/zfs-tests/tests/functional/userquota/Makefile
	tests/zfs-tests/tests/functional/upgrade/Makefile
	tests/zfs-tests/tests/functional/vdev_zaps/Makefile
	tests/zfs-tests/tests/functional/write_dirs/Makefile
	tests/zfs-tests/tests/functional/xattr/Makefile
	tests/zfs-tests/tests/functional/zvol/Makefile
	tests/zfs-tests/tests/functional/zvol/zvol_cli/Makefile
	tests/zfs-tests/tests/functional/zvol/zvol_ENOSPC/Makefile
	tests/zfs-tests/tests/functional/zvol/zvol_misc/Makefile
	tests/zfs-tests/tests/functional/zvol/zvol_swap/Makefile
	tests/zfs-tests/tests/perf/Makefile
	tests/zfs-tests/tests/perf/fio/Makefile
	tests/zfs-tests/tests/perf/regression/Makefile
	tests/zfs-tests/tests/perf/scripts/Makefile
	tests/zfs-tests/tests/stress/Makefile
	rpm/Makefile
	rpm/redhat/Makefile
	rpm/redhat/zfs.spec
	rpm/redhat/zfs-kmod.spec
	rpm/redhat/zfs-dkms.spec
	rpm/generic/Makefile
	rpm/generic/zfs.spec
	rpm/generic/zfs-kmod.spec
	rpm/generic/zfs-dkms.spec
	zfs-script-config.sh
	zfs.release
])


AC_OUTPUT
