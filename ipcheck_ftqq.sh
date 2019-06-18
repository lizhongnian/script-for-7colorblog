#!/bin/bash
#按格式将ip填入iplist中
iplist=('103.99.000.000' '161.117.000.000')
#写入Server酱的秘钥
#Server酱地址http://sc.ftqq.com/3.version  github账号登入即可获取秘钥，详情请看使用准则
ft_sckey="xxxxxxxxxxxxxxxxxxxxxxxxxx"
ipcheck()
{
if [ $(curl -s https://ipcheck.need.sh/api_v2.php?ip=$1 | awk -F '[:}]' '{print $21}') = true ] ; 
then 
echo -e "你的小鸡$1没有被x！"
else
echo -e "准备进行第二次检测"
sleep 1
ipcheck_two $1
fi
}
ipcheck_two()
{
if [ $(curl -s https://ipcheck.need.sh/api_v2.php?ip=$1 | awk -F '[:}]' '{print $21}') = true ] ; 
then 
echo -e "你的小鸡$1没有被x！"
else
echo -e "准备进行第三次检测"
sleep 1
ipcheck_three $1
fi 
}
ipcheck_three()
{
if [ $(curl -s https://ipcheck.need.sh/api_v2.php?ip=$1 | awk -F '[:}]' '{print $21}') = true ] ; 
then 
echo -e "你的小鸡$1没有被x！"
else
echo -e "你的小鸡$1被x了！"
wget https://sc.ftqq.com/$ft_sckey.send?text=主人，你的小鸡鸡$1被x了！ -O /dev/null >> /dev/null 2>&1
fi 
}
for(( i=0;i<${#iplist[@]};i++)) do
ipcheck ${iplist[i]}
done;
