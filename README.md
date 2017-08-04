#---------------------------------------------------
#hii service 安装文档
#建议使用 sublime3打开
#===================================================

1、在ansible(推荐版本：2.2.1)以上版本服务器上，创建安装目录
mkdir -p /ansibleProject/ansible-hii-serviceStatus

2、将ansible 自动化脚本解压到该目录

3、依据环境修改hosts文件 ： vim /ansibleProject/ansible-hii-serviceStatus/inventory/hosts

示例
		3.1主机特殊参数解释
		#controller01   ansible_host=172.16.41.115      ansible_ssh_pass=huayun2016  allRoles='controller,network,compute,cu'
		参数解释：
		allRoles： 节点实际安装的角色，可选为（只是做说明）：controller，network，compute，cu，stackwatch

		3.2主机组
		[controllerVip] --> HA环境controllerVip 节点，非HA填写controller节点

		[controller]
		[network]
		[compute]
		[cu]
		[neoCU]
		[stackwatch]

4、填写全局变量  vim /ansibleProject/ansible-hii-serviceStatus/group_vars/all.yml 

#***********************************************************************************************
clusterInfo:
  CUVersion: NeoCU8.0       							# cu7.0 or neoCU
  projectName: zwdPOC01            						# exm: wuxi ditie
<<<<<<< HEAD
  HAType: no
=======
  HAType: no 											# 是否是HA集群
>>>>>>> eb0869de830fb200e7b8d4e699fc61d10eea5d4b
  openstackVersion: Mitaka        						# openstack版本 Juno or Mitaka
  projectTime: "2017-04-20 00:00:00"      				# project Time：implamentation time
  HAVip: 172.16.41.115 									# Ha环境 controllerVip



systemInfo:
  systemVersion: Centos7.2.1511							#操作系统版本

databaseInfo:
  mysqlHost: "{{ clusterInfo.HAVip }}"					#数据服务器ip；一般为controller的一个ip
  mysqlUser: root										#数据库用户
  mysqlPass: passw0rd									#数据库密码
  mysqlPort: 3306										#数据库端口
 #***********************************************************************************************

 5、安装所有节点agent
 ansible-playbook -i hosts deployOpenstackServerStatus-allHost.yml

6、安装所有controller节点
 ansible-playbook -i hosts deployOpenstackServerStatus-controller.yml

 7、打开网页查看状态
http://controllerIP/cgi-bin/serviceStatusV2.py

8、点击页面更新状态，刷星服务页面的结果

#至此部署全部结束
#==========================================================================


备注：
1、web方式手动查看客户端服务状态是否正常如： httpd服务
http://clientIP/cgi-bin/serviceStatusApi.py?serviceName=httpd

2、最新版克隆地址
<<<<<<< HEAD
https://github.com/zhaowangda/openstackServiceStatus.git
=======
https://github.com/zhaowangda/openstackServiceStatus.git
>>>>>>> eb0869de830fb200e7b8d4e699fc61d10eea5d4b
