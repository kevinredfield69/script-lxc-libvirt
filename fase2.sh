lxc-attach -n postgresql-container -- systemctl stop postgresql.service

lxc-attach -n postgresql-container -- umount /mnt

lvextend -L +1G /dev/mapper/debiankevin-lxc

virsh attach-disk debian-stretch9 --source /dev/mapper/debiankevin-lxc --target vda

ssh postgresql-lxc@10.0.3.231 systemctl start postgresql.service
