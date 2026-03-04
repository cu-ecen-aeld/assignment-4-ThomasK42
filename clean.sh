#!/bin/bash
#Script to clean buildroot build artifacts
#Author: Thomas Kloeker

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external

set -e 
cd `dirname $0`

echo "Cleaning all buildroot build artifacts INCLUDING the configuration file."
make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} distclean
