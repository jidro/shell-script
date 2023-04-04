#!/bin/bash
clear
echo ""
echo -e "\033[31m Steamcommunity302 For Steam Deck 安装 \033[0m"
dir_=$(pwd)
cd $dir_
echo "当前目录:" $dir_
current_user=$(whoami)
has_root() {
    if [[ $current_user != "root" ]]; then
        echo "权限需要提升:输入root密码以继续执行脚本" 1>&2
        echo "若未设置过root密码请先打开终端输入passwd进行设置" 1>&2
		echo "" 1>&2
		read -p "请输入root密码:" userpasswd
		chmod +x $dir_/install.sh
		echo $userpasswd | sudo -S $dir_/install.sh
		exit 1
    fi
}
has_root

echo "清理旧文件"
rm -f steamcommunity_302.caddy
rm -f s302.run.sh
rm -f steamcommunity_302.service
rm -f /etc/systemd/system/steamcommunity_302.service
rm -f /etc/systemd/system/multi-user.target.wants/steamcommunity_302.service
echo "下载后端程序"
#wget -N -O steamcommunity_302.caddy --no-check-certificate https://caddyserver.com/api/download?os=linux&arch=amd64
#wget -N -O steamcommunity_302.caddy --no-check-certificate https://www.dogfight360.com/Usbeam/caddy_linux_amd64
download_status=$(curl -k -o $dir_/steamcommunity_302.caddy -w "%{http_code}" https://www.dogfight360.com/Usbeam/caddy_linux_amd64)
    if [[ $download_status != 200 ]]; then
	    echo -e "\033[31m 后端程序下载失败,请检查网络并重新执行安装脚本! \033[0m"
	    echo -e "\033[31m 后端程序下载失败,请检查网络并重新执行安装脚本! \033[0m"
	    echo -e "\033[31m 后端程序下载失败,请检查网络并重新执行安装脚本! \033[0m"
		exit 1
    fi
echo "赋予后端程序执行属性"
chmod +x $dir_/steamcommunity_302.caddy
chown deck:deck $dir_/"steamcommunity_302.caddy"
echo "创建服务文件"
cat > steamcommunity_302.service <<EOF
[Unit]
Description=steamcommunity_302
[Service]
ExecStart=$dir_/s302.run.sh
[Install]
WantedBy=multi-user.target
EOF
echo "创建运行脚本"
cat > s302.run.sh <<EOF
#!/bin/sh
cd $dir_
sudo -S $dir_/steamcommunity_302.caddy run --config $dir_/steamcommunity_302.caddy.json --adapter caddyfile
EOF
chown deck:deck $dir_/"s302.run.sh"
chmod +x s302.run.sh
echo "安装服务"
chown deck:deck $dir_/"steamcommunity_302.service"
cp $dir_/steamcommunity_302.service /etc/systemd/system/steamcommunity_302.service -f
chmod +x /etc/systemd/system/steamcommunity_302.service
ln -s $dir_/steamcommunity_302.service /etc/systemd/system/multi-user.target.wants/
echo "备份并写入hosts文件,hosts备份保存于/etc/hosts.backup.*"
mv /etc/hosts /etc/hosts.backup.$(date +%s) -f

echo "安装证书"
cp $dir_/steamcommunityCA.pem /etc/ca-certificates/trust-source/anchors/steamcommunityCA.crt -f
sudo -S trust extract-compat

echo "创建卸载脚本"
cat > $dir_/"uninstall.sh" <<'EOF'
#!/bin/bash
clear
echo ""
echo -e "\033[31m Steamcommunity302 For Steam Deck 卸载 \033[0m"
dir_=$(pwd)
cd $dir_
echo "当前目录:" $dir_
current_user=$(whoami)
has_root() {
    if [[ $current_user != "root" ]]; then
        echo "权限需要提升:输入root密码以继续执行脚本" 1>&2
		echo "" 1>&2
		read -p "请输入root密码:" userpasswd
		echo $userpasswd |sudo -S $dir_/uninstall.sh
		exit 1
    fi
}
has_root
echo "停止服务"
systemctl stop steamcommunity_302.service
echo "删除服务"
rm $dir_/steamcommunity_302.service -f
rm /etc/systemd/system/steamcommunity_302.service -f
rm /etc/systemd/system/multi-user.target.wants/steamcommunity_302.service -f
echo "删除证书"
rm /etc/ca-certificates/trust-source/anchors/steamcommunityCA.crt -f
sudo -S trust extract-compat
echo "备份hosts"
mv /etc/hosts /etc/hosts.backup.$(date +%s) -f
echo "清空hosts"
echo "" > /etc/hosts
echo "刷新系统服务"
systemctl daemon-reload
echo -e "\033[31m 卸载完成,请手动删除目录下残留文件 \033[0m"
EOF

chown deck:deck $dir_/"uninstall.sh"
chmod +x $dir_/"uninstall.sh"
echo "写入hosts"
cat > /etc/hosts <<EOF
127.0.0.1 steamcommunity.com #S302
127.0.0.1 www.steamcommunity.com #S302
127.0.0.1 store.steampowered.com #S302
127.0.0.1 api.steampowered.com #S302
127.0.0.1 help.steampowered.com #S302
127.0.0.1 login.steampowered.com #S302
127.0.0.1 store.akamai.steamstatic.com #S302

EOF

echo "创建日志查看脚本"
cat > $dir_/"log.sh" <<EOF
journalctl -u steamcommunity_302.service -f -n 100
EOF

chown deck:deck $dir_/"log.sh"
chmod +x $dir_/"log.sh"
echo "启动服务"
systemctl daemon-reload
systemctl stop steamcommunity_302.service
systemctl start steamcommunity_302.service

echo -e "\033[31m -------程序以当前目录程序运行,请勿删除当前目录!-------- \033[0m"
echo -e "\033[31m ------------------------------------------------------- \033[0m"
echo -e "\033[31m -----------安装完成已完成,可直接关闭该窗口!------------ \033[0m"
