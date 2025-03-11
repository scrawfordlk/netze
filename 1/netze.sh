sudo tcpdump --interface wlo1 -w dump.pcap &
wget --delete-after http://student.cosy.sbg.ac.at/~scrawford/file
sudo killall tcpdump
wireshark dump.pcap
# tshark -r dump.pcap -Y "tcp" -T fields -e frame.time_relative -e tcp.seq >tcp_data.txt
# python3 plot_tcp.py tcp_data.txt
