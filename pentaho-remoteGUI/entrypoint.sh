#!/bin/bash

# Sets script to fail if any command fails.
set -e

set_xauth() {
	echo xauth add $DISPLAY . $XAUTH
	touch /.Xauthority
	xauth add $DISPLAY . $XAUTH
}

custom_properties() {
	if [ -f /jobs/kettle.properties ] ; then
		cp /jobs/kettle.properties $KETTLE_HOME
	fi
}

run_spoon() {
	custom_properties
	set_xauth
	echo /data-integration/spoon.sh
	/data-integration/spoon.sh
}

print_usage() {
echo "

Usage:	$0 COMMAND

Pentaho Data Integration (PDI)

Options:
  spoon			Run spoon (GUI)
"
}

case "$1" in
    help)
        print_usage
        ;;
    runt)
	shift 1
        run_pan "$@"
        ;;
    runj)
	shift 1
        run_kitchen "$@"
        ;;
    spoon)
	run_spoon
        ;;
    *)
        exec "$@"
esac
