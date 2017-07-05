/*
Navicat MySQL Data Transfer

Source Server         : 172.16.60.16
Source Server Version : 50505
Source Host           : 172.16.60.16:3306
Source Database       : openstackService

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-23 15:49:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `clusterinfo`
-- ----------------------------
DROP TABLE IF EXISTS `clusterinfo`;
CREATE TABLE `clusterinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `haType` varchar(200) DEFAULT '否',
  `openstackVersion` varchar(200) DEFAULT 'Juno',
  `cuVersion` varchar(200) DEFAULT '7.0',
  `gosaltIP` varchar(200) DEFAULT NULL,
  `gosaltGroup` varchar(200) DEFAULT NULL,
  `groupURL` varchar(250) DEFAULT NULL,
  `updateTime` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clusterinfo
-- ----------------------------
INSERT INTO `clusterinfo` VALUES ('1', 'kuiweitest', 'True', 'Mitaka', 'NeoCU8.0', '10.10.10.10', 'webconsole', 'http://172.16.25.10/', '2017-06-23 00:00:00');

-- ----------------------------
-- Table structure for `CUServiceTemplate`
-- ----------------------------
DROP TABLE IF EXISTS `CUServiceTemplate`;
CREATE TABLE `CUServiceTemplate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(200) NOT NULL DEFAULT 'controller',
  `serviceName` varchar(200) NOT NULL,
  `haService` varchar(200) NOT NULL DEFAULT 'no' COMMENT 'is ha only',
  `command` varchar(200) DEFAULT NULL,
  `serviceType` varchar(200) NOT NULL DEFAULT 'normal',
  `platform` varchar(200) NOT NULL DEFAULT 'centos7',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CUServiceTemplate
-- ----------------------------
INSERT INTO `CUServiceTemplate` VALUES ('2', 'controller', 'mariadb', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('3', 'controller', 'neutron-server', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('4', 'controller', 'openstack-cinder-api', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('5', 'controller', 'openstack-cinder-scheduler', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('6', 'controller', 'openstack-cinder-volume', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('7', 'controller', 'openstack-glance-api', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('8', 'controller', 'openstack-glance-registry', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('9', 'controller', 'openstack-heat-api', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('10', 'controller', 'openstack-heat-api-cfn', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('11', 'controller', 'openstack-heat-engine', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('12', 'controller', 'openstack-keystone', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('13', 'controller', 'openstack-nova-api', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('14', 'controller', 'openstack-nova-cert', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('15', 'controller', 'openstack-nova-conductor', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('16', 'controller', 'openstack-nova-novncproxy', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('17', 'controller', 'openstack-nova-scheduler', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('18', 'controller', 'rabbitmq-server', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('19', 'controller', 'stackwatch-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('20', 'controller', 'supervisord', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('21', 'controller', 'neutron-clb-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('22', 'controller', 'neutron-dhcp-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('23', 'controller', 'neutron-firewall-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('24', 'controller', 'neutron-l3-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('25', 'controller', 'neutron-metadata-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('26', 'controller', 'neutron-metering-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('27', 'controller', 'neutron-openvswitch-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('28', 'controller', 'neutron-qos-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('29', 'controller', 'neutron-vpn-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('30', 'controller', 'subsupervisor', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('31', 'controller', 'rabbitmq-status-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('32', 'controller', 'keystone-status-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('33', 'controller', 'glance-status-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('34', 'controller', 'cinder-status-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('35', 'controller', 'openstack-nova-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('36', 'controller', 'neutron-status-function-test', 'no', null, 'command', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('37', 'cu', 'mariadb', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('38', 'maoyan', 'etcd', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('39', 'maoyan', 'influxdb', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('40', 'maoyan', 'stackwatch-api', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('41', 'maoyan', 'chronograf', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('42', 'compute', 'neutron-firewall-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('43', 'compute', 'neutron-openvswitch-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('44', 'compute', 'openstack-nova-compute', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('45', 'compute', 'qga-proxy', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('46', 'compute', 'stackwatch-agent', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('47', 'compute', 'supervisord', 'no', null, 'normal', 'centos7');
INSERT INTO `CUServiceTemplate` VALUES ('48', 'compute', 'subsupervisor', 'no', null, 'command', 'centos7');

-- ----------------------------
-- Table structure for `hostSchema`
-- ----------------------------
DROP TABLE IF EXISTS `hostSchema`;
CREATE TABLE `hostSchema` (
  `hostIP` varchar(200) NOT NULL,
  `hostName` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `allRoles` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT 'Running',
  `os` varchar(200) NOT NULL,
  `webURL` varchar(200) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `UPTime` varchar(200) DEFAULT '0',
  `diskInfo` varchar(200) DEFAULT NULL,
  `memInfo` varchar(200) DEFAULT NULL,
  `totalProcess` varchar(200) DEFAULT '',
  PRIMARY KEY (`hostIP`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hostSchema
-- ----------------------------
INSERT INTO `hostSchema` VALUES ('172.16.60.15', 'controller01', 'controller', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 1 day,  4:32,  6 users,  load average: 2.06, 2.29, 2.41', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.15', 'controller01', 'neoCU', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 1 day,  4:32,  6 users,  load average: 2.06, 2.29, 2.41', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.15', 'controller01', 'network', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 1 day,  4:32,  6 users,  load average: 2.06, 2.29, 2.41', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.15', 'controller01', 'stackwatch', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 1 day,  4:32,  6 users,  load average: 2.06, 2.29, 2.41', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.16', 'controller02', 'controller', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 3.30, 2.86, 2.54', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.16', 'controller02', 'neoCU', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 3.30, 2.86, 2.54', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.16', 'controller02', 'network', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 3.30, 2.86, 2.54', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.17', 'controller03', 'controller', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 2.20, 2.19, 2.30', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.17', 'controller03', 'neoCU', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 2.20, 2.19, 2.30', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.17', 'controller03', 'network', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:48,  1 user,  load average: 2.20, 2.19, 2.30', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.18', 'compute01', 'compute', 'compute', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 2 days, 22:53,  3 users,  load average: 0.10, 0.08, 0.06', null, null, '');
INSERT INTO `hostSchema` VALUES ('172.16.60.19', 'compute02', 'compute', 'compute', 'Running', 'Centos7.2.1511', '', null, ' 15:46:07 up 22:31,  1 user,  load average: 0.04, 0.04, 0.05', null, null, '');

-- ----------------------------
-- Table structure for `NeoCUServiceTemplate`
-- ----------------------------
DROP TABLE IF EXISTS `NeoCUServiceTemplate`;
CREATE TABLE `NeoCUServiceTemplate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(200) NOT NULL DEFAULT 'controller',
  `serviceName` varchar(200) NOT NULL,
  `haService` varchar(200) NOT NULL DEFAULT 'no' COMMENT 'is ha only',
  `command` varchar(200) DEFAULT NULL,
  `serviceType` varchar(200) NOT NULL DEFAULT 'normal',
  `platform` varchar(200) NOT NULL DEFAULT 'centos7',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of NeoCUServiceTemplate
-- ----------------------------
INSERT INTO `NeoCUServiceTemplate` VALUES ('2', 'controller', 'mariadb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('3', 'controller', 'neutron-server', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('4', 'controller', 'openstack-cinder-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('5', 'controller', 'openstack-cinder-scheduler', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('6', 'controller', 'openstack-cinder-volume', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('7', 'controller', 'openstack-glance-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('8', 'controller', 'openstack-glance-registry', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('9', 'controller', 'openstack-heat-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('10', 'controller', 'openstack-heat-api-cfn', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('11', 'controller', 'openstack-heat-engine', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('13', 'controller', 'openstack-nova-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('15', 'controller', 'openstack-nova-conductor', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('16', 'controller', 'openstack-nova-novncproxy', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('17', 'controller', 'openstack-nova-scheduler', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('18', 'controller', 'rabbitmq-server', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('19', 'controller', 'stackwatch-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('20', 'controller', 'supervisord', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('21', 'controller', 'neutron-clb-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('22', 'controller', 'neutron-dhcp-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('24', 'controller', 'neutron-l3-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('25', 'controller', 'neutron-metadata-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('26', 'controller', 'neutron-metering-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('27', 'controller', 'neutron-openvswitch-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('28', 'controller', 'neutron-qos-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('29', 'controller', 'neutron-vpn-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('37', 'cu', 'mariadb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('38', 'maoyan', 'etcd', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('39', 'maoyan', 'influxdb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('40', 'maoyan', 'stackwatch-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('41', 'maoyan', 'chronograf', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('43', 'compute', 'neutron-openvswitch-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('44', 'compute', 'openstack-nova-compute', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('45', 'compute', 'qga-proxy', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('46', 'compute', 'stackwatch-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('47', 'compute', 'supervisord', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('51', 'controller', 'elasticsearch', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('54', 'stackwatch', 'etcd', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('57', 'controller', 'haproxy', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('60', 'controller', 'httpd', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('63', 'stackwatch', 'influxdb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('69', 'controller', 'memcached', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('75', 'controller', 'monitor_host_usb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('78', 'controller', 'neutron-interface-monitor-agent', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('90', 'controller', 'openstack-cloudultra-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('93', 'controller', 'openstack-cloudultra-scheduler', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('96', 'controller', 'openstack-cloudultra-worker', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('102', 'controller', 'openstack_log_consumer', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('105', 'controller', 'openvswitch-nonetwork', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('108', 'controller', 'openvswitch', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('111', 'controller', 'pacemaker', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('114', 'cu', 'neocu-notification-beat', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('117', 'cu', 'neocu-notification-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('129', 'stackwatch', 'stackwatch-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('132', 'compute', 'libvirtd', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('135', 'compute', 'monitor_host_usb', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('138', 'compute', 'netcf-transaction', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('147', 'compute', 'openvswitch-nonetwork', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('150', 'neoCU', 'neocu-notification-api', 'no', null, 'normal', 'NeoCU');
INSERT INTO `NeoCUServiceTemplate` VALUES ('159', 'neoCU', 'neocu-notification-beat', 'no', null, 'normal', 'NeoCU');

-- ----------------------------
-- Table structure for `serviceStatus`
-- ----------------------------
DROP TABLE IF EXISTS `serviceStatus`;
CREATE TABLE `serviceStatus` (
  `hostName` varchar(200) NOT NULL DEFAULT '',
  `hostIP` varchar(200) NOT NULL DEFAULT '',
  `serviceName` varchar(200) NOT NULL,
  `roleName` varchar(200) NOT NULL,
  `haService` varchar(200) NOT NULL DEFAULT 'no',
  `status` varchar(200) NOT NULL DEFAULT 'Running',
  `checkTime` varchar(200) NOT NULL DEFAULT '2017-3-17 8:00:00',
  `pid` varchar(200) DEFAULT '0000',
  `abnormalAdvice` varchar(200) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  `serviceType` varchar(200) NOT NULL DEFAULT 'normal',
  PRIMARY KEY (`hostName`,`hostIP`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceStatus
-- ----------------------------
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'libvirtd', 'compute', 'no', 'Running', '2017-06-23 15:46:08', '25000', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'monitor_host_usb', 'compute', 'no', 'Running', '2017-06-23 15:46:08', '25109', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'netcf-transaction', 'compute', 'no', 'Stopped', '2017-06-23 15:46:08', '', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'neutron-openvswitch-agent', 'compute', 'no', 'Running', '2017-06-23 15:46:09', '25935', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'openstack-nova-compute', 'compute', 'no', 'Running', '2017-06-23 15:46:09', '25914', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'openvswitch-nonetwork', 'compute', 'no', 'Running', '2017-06-23 15:46:09', '25570', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'qga-proxy', 'compute', 'no', 'Running', '2017-06-23 15:46:09', '25075', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'stackwatch-agent', 'compute', 'no', 'Running', '2017-06-23 15:46:10', '19579', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute01', '172.16.60.18', 'supervisord', 'compute', 'no', 'Running', '2017-06-23 15:46:10', '11114', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'libvirtd', 'compute', 'no', 'Running', '2017-06-23 15:46:10', '1358', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'monitor_host_usb', 'compute', 'no', 'Running', '2017-06-23 15:46:11', '1339', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'netcf-transaction', 'compute', 'no', 'Running', '2017-06-23 15:46:11', '824', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'neutron-openvswitch-agent', 'compute', 'no', 'Running', '2017-06-23 15:46:11', '1344', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'openstack-nova-compute', 'compute', 'no', 'Running', '2017-06-23 15:46:11', '1342', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'openvswitch-nonetwork', 'compute', 'no', 'Running', '2017-06-23 15:46:12', '829', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'qga-proxy', 'compute', 'no', 'Running', '2017-06-23 15:46:12', '1346', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'stackwatch-agent', 'compute', 'no', 'Running', '2017-06-23 15:46:12', '1350', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('compute02', '172.16.60.19', 'supervisord', 'compute', 'no', 'Running', '2017-06-23 15:46:12', '1119', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'elasticsearch', 'controller', 'no', 'Running', '2017-06-23 15:46:13', '1437', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'etcd', 'stackwatch', 'no', 'Running', '2017-06-23 15:46:13', '16443', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'haproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:13', '1364', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'httpd', 'controller', 'no', 'Running', '2017-06-23 15:46:14', 'ExecStop=/bin/kill', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'influxdb', 'stackwatch', 'no', 'Running', '2017-06-23 15:46:14', '1384', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'mariadb', 'controller', 'no', 'Running', '2017-06-23 15:46:14', '13272', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'memcached', 'controller', 'no', 'Running', '2017-06-23 15:46:15', '1383', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-06-23 15:46:15', '1389', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-06-23 15:46:15', '14776', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-06-23 15:46:16', '14958', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-clb-agent', 'controller', 'no', 'Error', '2017-06-23 15:46:16', '1375', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:16', '1409', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:17', '15617', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-06-23 15:46:17', '', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:18', '1361', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:18', '1403', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:18', '1426', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:19', '1417', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-server', 'controller', 'no', 'Running', '2017-06-23 15:46:19', '1413', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:19', '1370', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-06-23 15:46:20', '1395', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:20', '1380', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-06-23 15:46:20', '1386', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-06-23 15:46:21', '1414', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:21', '1387', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-06-23 15:46:21', '1362', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-06-23 15:46:22', '1379', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-06-23 15:46:22', '23067', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-06-23 15:46:23', '1366', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-06-23 15:46:23', '1407', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-06-23 15:46:24', '6716', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-06-23 15:46:24', '1385', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-06-23 15:46:24', '1374', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:25', '1373', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:25', '1382', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-06-23 15:46:25', 'ExecStop=/bin/kill', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openvswitch', 'controller', 'no', 'Running', '2017-06-23 15:46:26', '1368', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-06-23 15:46:26', '811', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'pacemaker', 'controller', 'no', 'Running', '2017-06-23 15:46:26', '2041', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-06-23 15:46:27', '10524', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:27', '21178', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'stackwatch-api', 'stackwatch', 'no', 'Running', '2017-06-23 15:46:27', '18101', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller01', '172.16.60.15', 'supervisord', 'controller', 'no', 'Running', '2017-06-23 15:46:28', '30617', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'elasticsearch', 'controller', 'no', 'Running', '2017-06-23 15:46:28', '25879', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'haproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:29', '30544', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'httpd', 'controller', 'no', 'Running', '2017-06-23 15:46:29', 'ExecStop=/bin/kill', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'mariadb', 'controller', 'no', 'Running', '2017-06-23 15:46:29', '11367', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'memcached', 'controller', 'no', 'Running', '2017-06-23 15:46:30', '7480', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-06-23 15:46:30', '18576', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-06-23 15:46:30', '10852', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-06-23 15:46:31', '10976', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-clb-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:31', '25295', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:31', '14296', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:32', '16445', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-06-23 15:46:32', '', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:33', '15027', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:33', '17219', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:33', '10707', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:34', '17503', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-server', 'controller', 'no', 'Running', '2017-06-23 15:46:34', '26188', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:34', '20618', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-06-23 15:46:35', '17805', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:35', '17851', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-06-23 15:46:36', '18701', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-06-23 15:46:36', '14030', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:36', '14044', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-06-23 15:46:37', '14057', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-06-23 15:46:37', '18814', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-06-23 15:46:38', '18144', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-06-23 15:46:38', '25933', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-06-23 15:46:38', '28519', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-06-23 15:46:39', '28532', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-06-23 15:46:39', '25799', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-06-23 15:46:39', '18482', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:40', '18552', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:40', '18397', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-06-23 15:46:41', '17364', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openvswitch', 'controller', 'no', 'Running', '2017-06-23 15:46:41', '8528', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-06-23 15:46:41', '8426', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'pacemaker', 'controller', 'no', 'Running', '2017-06-23 15:46:42', '10755', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-06-23 15:46:42', '7633', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:42', '14217', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller02', '172.16.60.16', 'supervisord', 'controller', 'no', 'Running', '2017-06-23 15:46:43', '24070', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'elasticsearch', 'controller', 'no', 'Running', '2017-06-23 15:46:44', '20424', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'haproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:44', '25487', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'httpd', 'controller', 'no', 'Running', '2017-06-23 15:46:44', 'ExecStop=/bin/kill', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'mariadb', 'controller', 'no', 'Running', '2017-06-23 15:46:45', '10979', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'memcached', 'controller', 'no', 'Running', '2017-06-23 15:46:45', '2056', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-06-23 15:46:45', '13527', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-06-23 15:46:46', '27523', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-06-23 15:46:46', '27689', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-clb-agent', 'controller', 'no', 'Error', '2017-06-23 15:46:46', '11376', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:47', '9240', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:47', '11406', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-06-23 15:46:47', '', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:48', '9968', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:48', '12514', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:49', '5955', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:49', '12786', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-server', 'controller', 'no', 'Running', '2017-06-23 15:46:49', '20876', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:50', '15918', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-06-23 15:46:50', '12903', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:50', '12940', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-06-23 15:46:51', '13826', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-06-23 15:46:51', '8319', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:51', '8332', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-06-23 15:46:52', '8345', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-06-23 15:46:52', '13764', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-06-23 15:46:52', '4822', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-06-23 15:46:53', '20545', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-06-23 15:46:53', '23715', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-06-23 15:46:54', '23728', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-06-23 15:46:54', '20368', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-06-23 15:46:54', '13415', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-06-23 15:46:55', '13503', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-06-23 15:46:55', '13347', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-06-23 15:46:55', 'ExecStop=/bin/kill', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openvswitch', 'controller', 'no', 'Running', '2017-06-23 15:46:56', '3798', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-06-23 15:46:56', '3696', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'pacemaker', 'controller', 'no', 'Running', '2017-06-23 15:46:56', '5975', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-06-23 15:46:57', '10139', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-06-23 15:46:57', '7393', '', null, 'normal');
INSERT INTO `serviceStatus` VALUES ('controller03', '172.16.60.17', 'supervisord', 'controller', 'no', 'Running', '2017-06-23 15:46:57', '16666', '', null, 'normal');

-- ----------------------------
-- Table structure for `serviceStatusHistory`
-- ----------------------------
DROP TABLE IF EXISTS `serviceStatusHistory`;
CREATE TABLE `serviceStatusHistory` (
  `hostName` varchar(200) NOT NULL DEFAULT '',
  `hostIP` varchar(200) NOT NULL DEFAULT '',
  `serviceName` varchar(200) NOT NULL,
  `roleName` varchar(200) NOT NULL,
  `haService` varchar(200) NOT NULL DEFAULT 'no',
  `status` varchar(200) NOT NULL DEFAULT 'Running',
  `checkTime` varchar(200) NOT NULL DEFAULT '2017-3-17 8:00:00',
  `abnormalAdvice` varchar(200) DEFAULT NULL,
  `command` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`hostName`,`hostIP`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceStatusHistory
-- ----------------------------

-- ----------------------------
-- Procedure structure for `getHostAllServiceName`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getHostAllServiceName`;
DELIMITER ;;
CREATE DEFINER=`hiiservice`@`%` PROCEDURE `getHostAllServiceName`(
in hName VARCHAR(200)
)
BEGIN
	select serviceName from serviceStatus where hostName = hName ;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `initServiceStatusTable`
-- ----------------------------
DROP PROCEDURE IF EXISTS `initServiceStatusTable`;
DELIMITER ;;
CREATE DEFINER=`hiiservice`@`%` PROCEDURE `initServiceStatusTable`()
BEGIN
	delete  from serviceStatus;
	INSERT into serviceStatus (hostname,hostip,serviceName,roleName,haservice,command,serviceType) select hostName,hostip,serviceName,roleName,haservice,command,serviceType from hostSchema  join serviceTemplate  on  hostSchema.role = serviceTemplate.roleName ;
	if ((select haType from clusterinfo ) != 'yes' ) THEN
			DELETE from serviceStatus WHERE haservice='yes';
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `updateHostAllServiceunknown`
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateHostAllServiceunknown`;
DELIMITER ;;
CREATE DEFINER=`hiiservice`@`%` PROCEDURE `updateHostAllServiceunknown`(in hIP VARCHAR(200),
in cTime VARCHAR (200))
BEGIN
	update serviceStatus set status = 'Unknown'  where hostIP = hIP;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `updateHostServiceStatus`
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateHostServiceStatus`;
DELIMITER ;;
CREATE DEFINER=`hiiservice`@`%` PROCEDURE `updateHostServiceStatus`(in hIP VARCHAR(200),
	in hService VARCHAR(200),
	IN sStatus varchar(200),
	in cTime VARCHAR(200), in spid VARCHAR(200), in suggestion VARCHAR(200))
BEGIN
	update serviceStatus set status=sStatus,checkTime=cTime,pid=spid,abnormalAdvice=suggestion where hostIP=hIP and serviceName=hService ;
end
;;
DELIMITER ;
