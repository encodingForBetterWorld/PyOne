#!/etc/bash

#11.20
del_rubbish(){
    python -c "from function import *;down_db.delete_many({});"
}

#2019.01.10
update_sp(){
    ps -aux | grep supervisord | awk '{print "kill -9 " $2}'|sh
    rm -rf supervisord.conf
    cp supervisord.conf.sample supervisord.conf
    mkdir /var/run/supervisor
    chmod +x /var/run/supervisor
    supervisord -c supervisord.conf
}


#执行
echo "2018.11.20更新版本，修复了磁力链接下载的bug&上传、展示有特殊字符的文件出问题的bug。"
echo "2018.11.21更新版本，优化磁力下载功能-可选下载文件。"
echo "2018.12.04更新版本，优化磁力下载界面"
echo "2018.12.10更新版本，修复特定分享目录后，二级目录设置密码出错的bug"
echo "2018.12.20更新版本，基础设置之后无需重启网站啦！如果你一直有保存之后不生效的问题，那么本次直接重启服务器吧！"
echo "2019.01.10更新版本，1. 修复防盗链失效的bug；2. 优化开机启动脚本。"
echo "2019.01.13更新版本，修复后台修改密码不生效的bug"
update_sp
echo "---------------------------------------------------------------"
echo "更新完成！"
echo "  > 1. 检查/data/aria2是否存在。"
echo "  > 2. 检查aria2是否运行：pgrep 'aria2c'"
echo "    如果aria2没有运行，运行：sh /data/aria2/aria2.sh start"
echo "如果重启网站失败，请手动重启！"
echo "---------------------------------------------------------------"
echo
echo "PyOne交流群：864996565"

