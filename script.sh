cd ~
rm -Rf ./zbovrtel/*
rm -Rf ./zbovrtel/.git
rm -Rf ./oyscwduvp/*
rm -Rf ./oyscwduvp/.git

git clone -b main https://gitlab.com/staskuznetsov/site.git ./zbovrtel
echo "---" > ./zbovrtel/xlncleadtfca.yml
echo "- name: Configure SiteMain" >> ./zbovrtel/xlncleadtfca.yml
echo "  hosts: 20.9.131.172" >> ./zbovrtel/xlncleadtfca.yml
echo "  become: True" >> ./zbovrtel/xlncleadtfca.yml
echo "  tasks:" >> ./zbovrtel/xlncleadtfca.yml
echo "  - name: Install Ngunx" >> ./zbovrtel/xlncleadtfca.yml
echo "    apt: name=nginx" >> ./zbovrtel/xlncleadtfca.yml
echo "  - name: Copy index html" >> ./zbovrtel/xlncleadtfca.yml
echo "    copy: src=index.html dest=/var/www/html" >> ./zbovrtel/xlncleadtfca.yml
echo "  - name: Reload ng1nx daemon" >> ./zbovrtel/xlncleadtfca.yml
echo "    service: name=nginx state=restarted" >> ./zbovrtel/xlncleadtfca.yml

cd ./zbovrtel
ansible-playbook xlncleadtfca.yml

cd ..
git clone -b dev https://gitlab.com/staskuznetsov/site.git ./oyscwduvp
echo "---" > ./oyscwduvp/fldtrbwm.yml
echo "- name: Configure SiteDev" >> ./oyscwduvp/fldtrbwm.yml
echo "  hosts: 20.57.139.24" >> ./oyscwduvp/fldtrbwm.yml
echo "  become: True" >> ./oyscwduvp/fldtrbwm.yml
echo "  tasks:" >> ./oyscwduvp/fldtrbwm.yml
echo "  - name: Install Ngunx" >> ./oyscwduvp/fldtrbwm.yml
echo "    apt: name=nginx" >> ./oyscwduvp/fldtrbwm.yml
echo "  - name: Copy index html" >> ./oyscwduvp/fldtrbwm.yml
echo "    copy: src=index.html dest=/var/www/html" >> ./oyscwduvp/fldtrbwm.yml
echo "  - name: Reload ng1nx daemon" >> ./oyscwduvp/fldtrbwm.yml
echo "    service: name=nginx state=restarted" >> ./oyscwduvp/fldtrbwm.yml

cd ./oyscwduvp
ansible-playbook fldtrbwm.yml

cd ..
