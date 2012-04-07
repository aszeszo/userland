#!/sbin/sh
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
# Copyright 2007 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.

. /lib/svc/share/smf_include.sh

# SMF_FMRI is the name of the target service. This allows multiple instances
# to use the same script.

if [ -z "$SMF_FMRI" ]; then
    echo "SMF framework variables are not initialized."
    exit ${SMF_EXIT_ERR:-1}
fi

getproparg() {
        val=`svcprop -p $1 $SMF_FMRI`
        [ -n "$val" ] && echo $val
}

javadb_lib=`getproparg javadb/lib`
datadir=`getproparg javadb/data`
jvmargs=`getproparg javadb/java_args`
java=`getproparg javadb/java`
start_args=`getproparg javadb/server_start_args`
shutdown_args=`getproparg javadb/server_shutdown_args`

if [ ! -x "$java" ]; then
    echo "javadb/java property must point to an executable file"
    exit $SMF_EXIT_ERR_CONFIG
fi

if [ -z "$datadir" ]; then
    echo "javadb/data property not set"
    exit $SMF_EXIT_ERR_CONFIG
fi

if [ ! -x "$datadir" ]; then
    echo "javadb/data directory ($datadir) does not exist"
    exit $SMF_EXIT_ERR_CONFIG
fi

derbynetjar="$javadb_lib/derbynet.jar"

case "$1" in
    start)
        exec "$java" $jvmargs -Dderby.system.home="$datadir" \
                     -jar "$derbynetjar" start $start_args
        ;;
    stop)
        exec "$java" -Dderby.system.home="$datadir" -jar "$derbynetjar" \
                     shutdown $shutdown_args
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

exit $SMF_EXIT_OK
