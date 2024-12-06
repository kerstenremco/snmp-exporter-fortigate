apt update
apt install unzip build-essential libsnmp-dev -y
cd /tmp
git clone https://github.com/prometheus/snmp_exporter.git
cd snmp_exporter/generator
make generator mibs
./generator generate -m mibs -m /buildfiles/mibs -g /buildfiles/generator.yml -o /buildfiles/snmp.yml