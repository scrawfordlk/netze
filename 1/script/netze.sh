#!/bin/sh

if [ "$EUID" -ne 0 ]; then
  echo "need root privileges"
  exit 1
fi

sudo tcpdump --interface wlo1 -w dump.pcap &
wget --delete-after http://student.cosy.sbg.ac.at/~scrawford/file
sudo killall tcpdump
tshark -r dump.pcap -Y "tcp.len > 0" -T fields -e frame.time_relative -e tcp.seq >dump.txt
gnuplot plot.gnu
mv diagram.pdf "$(date +%Y%m%d_%H%M%S).pdf"
