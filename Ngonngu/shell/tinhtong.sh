#!/bin/bash

BASE_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
FILE="$BASE_DIR/Sanpham/Doanhthu/doanhso.csv"

if [ ! -f "$FILE" ]; then
    echo "Khong tim thay file doanhso.csv"
    exit 1
fi

tong=$(awk -F "," 'NR > 1 {sum += $2} END {print sum}' "$FILE")

echo "Tong doanh thu la: $tong"

