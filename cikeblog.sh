#!/bin/bash
#本人程序已经没啥可加密的了，想了下，很多都不是我开发的，加密作甚？
# 欢迎加入刺客博客交流群，群号码：691270771
#忘记说了，授权码就在下面pass一行，对了，以后不再任何迁移数据，一个脚本一次破解，永久使用。
#还是建议需要的把脚本文件自己copy一份。自己写个脚本方便自己
#有句话还是得说，不要拿别人的脚本去忽悠小白，特别是改个名字就成自己的了，可耻到极点。。。
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
rm -rf sh
rm -rf s sscpanel ruisu ssrduo netspeed test_91yun.sh ssv3.sh irui open.sh vpn.bash
rm -rf $0

pass=4ker;
clear
#日志
echo -e "\033[34m=============================================================================\033[0m"
echo -e "\033[35m     请选择安装程序：\033[0m"
echo -e "\033[31m                ———————————————SSR及服务器系列———————————————————\033[0m"
echo -e "\033[35m                1.SSR一键免流脚本（2月22更新）\033[0m"
echo -e "\033[35m                2.Shadowsocks流控v2版\033[0m"
echo -e "\033[35m                3.一键锐速新脚本（2月22更新）\033[0m"
echo -e "\033[35m                4.SSR一键多端口脚本（2月22更新）\033[0m"
echo -e "\033[35m                6.一键卸载SSR免流脚本\033[0m"
echo -e "\033[35m                7.安装Net-Speed加速脚本\033[0m"
echo -e "\033[35m                8.91yun在线服务器速度测试脚本\033[0m"
echo -e "\033[35m                9.SSR后台守护脚本(请勿删除/root/sscron.sh文件)\033[0m"
echo -e "\033[35m                10.Shadowsocks流控v3版(仅支持Centos7.x系统)\033[0m"
echo -e "\033[35m                11.CentOS一键换核安装锐速（2月22更新）\033[0m"
echo -e "\033[31m                ————————————————————OpenVPN系列——————————————————\033[0m"
echo -e "\033[35m                12.OpenVPN流控（简易版）\033[0m"
echo -e "\033[35m                13.OpenVPN脚本版（无流控）\033[0m"	
echo -e "\033[35m                14.OPENVZ安装bbr脚本\033[0m"
echo -e "\033[35m                15.shadowsocksgo脚本\033[0m"		
echo -e "\033[34m=============================================================================\033[0m"
echo ""
echo -e "\033[31m                希望此脚本能帮助你，刺客博客收集：https://4ker.cc/work\033[0m"
echo -e "\033[31m                欢迎加入刺客博客交流群，群号码：691270771\033[0m"
echo ""
echo -e "\033[34m==============================================================================\033[0m"
echo -n "输入选项(默认安装SSR免流脚本): "
read mode
clear
echo '脚本无须授权即可使用，欢迎加入最新QQ群：691270771一起交流！'
sleep 1
case "$mode" in
"")
echo -e "安装类型：\033[35mSSR免流脚本\033[0m" ;
wget http://4ker.cc/s/s >/dev/null 2>&1
bash s
;;
"1")
echo -e "安装类型：\033[35mSSR免流脚本\033[0m" ;
wget http://4ker.cc/s/s >/dev/null 2>&1
bash s
;;
"2")
echo -e "安装类型：\033[35m流控脚本\033[0m" ;
wget http://shell.4ker.cc/shell/ss/sscpanel >/dev/null 2>&1
bash sscpanel
;;
"3")
echo -e "安装类型：\033[35m锐速脚本\033[0m" ;
wget http://4ker.cc/s/ruisu >/dev/null 2>&1
bash ruisu install
;;
"4")
echo -e "安装类型：\033[35mSSR一键多端口脚本\033[0m" ;
wget http://4ker.cc/s/ssrduo >/dev/null 2>&1
chmod +x ssrduo;./ssrduo
;;
"6")
echo -e "安装类型：\033[35mSSR一键卸载免流脚本\033[0m" ;
wget http://4ker.cc/s/s;bash s uninstall 
echo "ShadowsocksR 已成功卸载！"
;;
"7")
echo -e "安装类型：\033[35mNet-Speed加速脚本\033[0m" ;
wget http://shell.4ker.cc/shell/ss/netspeed >/dev/null 2>&1
bash netspeed
;;
"8")
echo -e "安装类型：\033[35m91yun在线服务器速度测试脚本\033[0m" ;
wget http://shell.4ker.cc/shell/test_91yun.sh >/dev/null 2>&1
bash test_91yun.sh
;;
"9")
echo -e "安装类型：\033[35mSSR守护脚本\033[0m" ;
wget http://shell.4ker.cc/shell/sscorn.sh >/dev/null 2>&1
bash sscorn.sh
;;
"10")
echo -e "安装类型：\033[35mssv3流控\033[0m" ;
wget http://4ker.cc/s/ssv3.sh >/dev/null 2>&1
bash ssv3.sh
;;
"11")
echo -e "安装类型：\033[35m锐速脚本\033[0m" ;
wget 4ker.cc/s/irui >/dev/null 2>&1
bash irui
;;
"12")
echo -e "安装类型：\033[35mOpenVPN流控\033[0m" ;
wget http://4ker.cc/s/backup/open.sh >/dev/null 2>&1
bash open.sh
;;
"13")
echo -e "安装类型：\033[35mOpenVPN脚本版\033[0m" ;
wget http://4ker.cc/s/vpn.bash >/dev/null 2>&1
bash vpn.bash
;;
"14")
echo -e "安装类型：\033[35mOPENvz bbr脚本\033[0m" ;
wget http://4ker.cc/s/bbr >/dev/null 2>&1
bash bbr
;;
"15")
echo -e "安装类型：\033[35mssgo脚本\033[0m" ;
wget http://4ker.cc/s/ssgo >/dev/null 2>&1
bash ssgo
;;
esac
echo
exit 0;
