#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
FILE="$BASE_DIR/Monan/Thucdon/monan2.csv"

if [ ! -f "$FILE" ]; then
    echo "Khong tim thay file monan2.csv"
    exit 1
fi

so_dong=$(grep -c "Viet Nam" "$FILE")

echo "So dong chua chuoi Viet Nam la: $so_dong"
