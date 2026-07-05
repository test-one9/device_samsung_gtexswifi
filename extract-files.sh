#!/bin/bash
#
# Copyright (C) 2026 The LineageOS Project
#
# Shell helper script to extract stock firmware blobs for SM-T280
#

set -e

DEVICE=gtexswifi
VENDOR=samsung

# Load extract utilities
if [ -z "${SRC_DIR}" ]; then
    SRC_DIR=../../../vendor/lineage/build/tools
fi
if [ ! -f "${SRC_DIR}/extract_utils.sh" ]; then
    echo "Lineage extraction tools not found! Ensure device tree is placed in device/samsung/gtexswifi/"
    exit 1
fi
. "${SRC_DIR}/extract_utils.sh"

# Setup directories
setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}"

# Pull binaries using adb
if [ -z "${1}" ]; then
    SRC=adb
else
    SRC="${1}"
fi

# Extract and register blobs listed in proprietary-files.txt
extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${SECTION}"

write_makefiles
echo "Extraction completed successfully! Vendor files generated in vendor/samsung/gtexswifi/"
