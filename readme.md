pg_restore -U postgres -d dvdrental \tmp\dvdrental.tar

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-12

user postgres

senha post123

database dvdrental

sudo su - postgres

psql -U postgres -d postgres -c 'CREATE DATABASE dvdrental2'

pg_restore --no-privileges --no-owner --dbname=postgresql://postgres:root123@192.168.0.205:5432/dvdrental /tmp/dvdrental.tar

pg_restore --no-privileges --no-owner --dbname=postgresql://postgres:root123123@rentaldvd.c3jcavj3xlsu.us-west-2.rds.amazonaws.com:5432/dvdrental /dvd/dvdrental.tar

pg_restore --host rentaldvd.c3jcavj3xlsu.us-west-2.rds.amazonaws.com --port 5432 --username "postgres" --dbname "dvdrental" --no-password  --verbose "/tmp/dvdrental.tar"

psql -U postgres -d postgres -c '\connect dvdrental'

ALTER TABLE public.rental ADD status varchar(20) NULL

ALTER TABLE public.payment ADD status varchar(20) NULL;

sudo timedatectl set-timezone America/Sao_Paulo

ALTER TABLE public.payment ALTER COLUMN payment_date TYPE timestamptz USING payment_date::timestamptz;

ALTER TABLE public.rental ALTER COLUMN last_update TYPE timestamptz USING last_update::timestamptz;

sudo service postgresql restartpg

ALTER USER postgres WITH PASSWORD 'root123';

pg_restore -h localhost -p 5432 -U postgres --dbname=dvdrental --verbose ./dvdrental.tar

-----------------------------------------------------------------------------------------------------------------------------------------
setar ip libvirt vagrant

virsh net-update vagrant-libvirt add-last ip-dhcp-host '<host mac="5e:c0:28:e2:a4:f9" ip="192.168.121.110"/>' --live --config --parent-index 0

systemctl stop libvirtd

sudo systemctl start libvirtd

sudo systemctl restart network-manager.service

## caminho para setar a config network mac ip
/etc/libvirt/qemu/networks/
