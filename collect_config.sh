#!/bin/bash

# Extract values from comma-separated parameters
rp1_name=$(echo "$env_tla_names" | cut -d',' -f1)
rt2_name=$(echo "$env_tla_names" | cut -d',' -f2)
rra_name=$(echo "$env_tla_names" | cut -d',' -f3)

rp1_prefix=$(echo "$prefix_letters" | cut -d',' -f1)
rt2_prefix=$(echo "$prefix_letters" | cut -d',' -f2)
rra_prefix=$(echo "$prefix_letters" | cut -d',' -f3)

rp1_port=$(echo "$initial_ports" | cut -d',' -f1)
rt2_port=$(echo "$initial_ports" | cut -d',' -f2)
rra_port=$(echo "$initial_ports" | cut -d',' -f3)

rp1_disk=$(echo "$env_disks" | cut -d',' -f1)
rt2_disk=$(echo "$env_disks" | cut -d',' -f2)
rra_disk=$(echo "$env_disks" | cut -d',' -f3)

# Create configuration file
cat <<EOL > config.txt
Environment TLA/Name:
  RP1: $rp1_name
  RT2: $rt2_name
  RRA: $rra_name
True Cfg – Config Name: $true_cfg
DB Version (ctc_data): $db_version
WS Version (ctcws): $ws_version
TMA Version: $tma_version
P R – Prefix Letter:
  RP1: $rp1_prefix
  RT2: $rt2_prefix
  RRA: $rra_prefix
Initial Port Number:
  RP1: $rp1_port
  RT2: $rt2_port
  RRA: $rra_port
IP 1 (Subnet): $ip1_subnet
IP 2 (Subnet): $ip2_subnet
IP Node: $ip_node
HPNS Host: $hpns_host
Environment Disk:
  RP1: $rp1_disk
  RT2: $rt2_disk
  RRA: $rra_disk
EOL

echo "Configuration saved to config.txt"
