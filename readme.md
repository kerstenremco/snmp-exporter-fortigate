# Custom Prometheus SNMP exporter for Fortigate

This is a snmp-exporter for Fortigate, based on [https://hub.docker.com/r/prom/snmp-exporter/tags](https://hub.docker.com/r/prom/snmp-exporter/tags)

## Installation

- Create a SNMPv3 user at your Fortigate
  - username: snmpexporter
  - Authentication algoritm: MD5
  - password: snmpexporter
  - No private
- Pull and start the docker image `kerstenremco/snmp-exporter-fortigate`
- Now query your SNMP via: `http://<host>:9116/snmp?target=<ip_of_fortigate>&auth=fortigate_v3&module=fortinet`

## Build it yourself

Want do change the config?

- Clone this repo
- Change the generator.yml file as needed
- Run buildscript.sh -> this spins up a container en build the new configfile named snmp.yml
- Run Dockerbuild
