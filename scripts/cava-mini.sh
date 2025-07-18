#!/usr/bin/env bash

# Start cava jika belum jalan
pgrep -x cava >/dev/null || cava >/dev/null &

# Tunggu cava siap nulis
sleep 0.3

# Pastikan FIFO file ada
[ ! -p /tmp/cava.fifo ] && mkfifo /tmp/cava.fifo

# Baca data dan ubah angka jadi blok █
tail -f /tmp/cava.fifo | while read -r line; do
  echo "$line" | sed 's/[0-9]\+/█/g'
done
