# script-for-7colorblog  ：  七彩blog脚本收集 
  
* 本人博客：https://www.7colorblog.com  
* 七彩杂铺货：https://faka.7colorblog.com  

# 使用教程
## mysql-jk使用
1. 宝塔直接复制脚本到计划任务菜单，添加shell脚本
2. crontab 需要把文件放到指定目录
  执行
  ````shell
  crontab -e
  ````
  插入新行：
  ````shell
  */10 * * * * /指定目录/mysql-jk.sh
  ````
  重启crontab
  ````shell
  systemctl restart crond.service
  ````
  



