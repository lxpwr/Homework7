echo "Перезапускаем nginx"
cd /root
cp /home/vagrant/nginx.spec /root/rpmbuild/SPECS/nginx.spec
nginx -t
nginx -s reload
echo "Ставим МС из репо"
yum install /root/rpmbuild/RPMS/x86_64/mc-4.8.27-1.1.x86_64.rpm -y