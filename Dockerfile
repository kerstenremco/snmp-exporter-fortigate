FROM prom/snmp-exporter:latest
COPY ./buildfiles/snmp.yml /etc/snmp_exporter/snmp.yml