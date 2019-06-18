#!/bin/bash

function docker_install_check()
{
	echo "开始脚本执行docker_install_check......"
    echo "检查Docker......"
    if [ $(docker -v|awk '{print $1}') == 'Docker' ]; then
        echo "检查到Docker已安装!"
    else
        echo "未安装docker环境......"
        echo "退出执行!" && exit 1
    fi
	echo "结束脚本执行docker_install_check......"
}
function docker_start_check()
{
	echo "开始脚本执行docker_start_check......"
    echo "检查Docker......"
    if [ $(docker -v|awk '{print $1}') == 'Docker' ]; then
        echo "检查到Docker已安装!"
    else
        echo "未安装docker环境......"
        echo "退出执行!" && exit 1
    fi
	echo "结束脚本执行docker_start_check......"
}


# 执行函数
docker_check



docker ps | grep ssrmu|awk '{print $NF}'

docker stats ssrmu|cut -d " " -f1|grep -v CONTAINER

docker ps | grep ssrmu


docker ps | grep ssrmu|awk '{print $NF}'

docker ps|cut -d " " -f1 | grep -E CONTAINER


