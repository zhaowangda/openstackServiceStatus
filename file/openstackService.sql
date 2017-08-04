/*
Navicat MySQL Data Transfer

Source Server         : 10.0.20.200
Source Server Version : 50505
Source Host           : 10.0.20.200:3306
Source Database       : openstackService

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-04 19:33:11
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
INSERT INTO `clusterinfo` VALUES ('1', 'ShangHai DC', 'True', 'Mitaka', 'NeoCU2.2.1', '10.10.10.10', 'webconsole', 'http://172.16.25.10/', '2017-07-28 00:00:00');

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
INSERT INTO `hostSchema` VALUES ('10.0.20.1', 'controller01', 'controller', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  3 users,  load average: 1.54, 1.71, 1.57', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.1', 'controller01', 'neoCU', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  3 users,  load average: 1.54, 1.71, 1.57', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.1', 'controller01', 'network', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  3 users,  load average: 1.54, 1.71, 1.57', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.1', 'controller01', 'stackwatch', 'controller,network,Neocu,stackwatch', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  3 users,  load average: 1.54, 1.71, 1.57', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.11', 'compute01', 'compute', 'compute', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 3 days,  1:39,  1 user,  load average: 0.00, 0.04, 0.12', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.12', 'compute02', 'compute', 'compute', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:17,  0 users,  load average: 0.66, 0.65, 0.68', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.2', 'controller02', 'controller', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  0 users,  load average: 1.10, 1.43, 1.43', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.2', 'controller02', 'neoCU', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  0 users,  load average: 1.10, 1.43, 1.43', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.2', 'controller02', 'network', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:43 up 6 days,  2:15,  0 users,  load average: 1.10, 1.43, 1.43', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.3', 'controller03', 'controller', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:44 up 6 days,  2:15,  0 users,  load average: 1.29, 1.21, 1.25', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.3', 'controller03', 'neoCU', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:44 up 6 days,  2:15,  0 users,  load average: 1.29, 1.21, 1.25', null, null, '');
INSERT INTO `hostSchema` VALUES ('10.0.20.3', 'controller03', 'network', 'controller,network,Neocu', 'Running', 'Centos7.2.1511', '', null, ' 19:26:44 up 6 days,  2:15,  0 users,  load average: 1.29, 1.21, 1.25', null, null, '');

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
  `packageVersion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`hostName`,`hostIP`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serviceStatus
-- ----------------------------
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'libvirtd', 'compute', 'no', 'Running', '2017-08-04 19:26:44', '2139', '', null, 'normal', 'libvirt-daemon-1.2.17-13.el7_2.5.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'monitor_host_usb', 'compute', 'no', 'Running', '2017-08-04 19:26:45', '2133', '', null, 'normal', 'monitor-host-usb-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'netcf-transaction', 'compute', 'no', 'Running', '2017-08-04 19:26:46', '1243', '', null, 'normal', 'netcf-libs-0.2.8-1.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'neutron-openvswitch-agent', 'compute', 'no', 'Running', '2017-08-04 19:26:46', '2123', '', null, 'normal', 'openstack-neutron-openvswitch-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'openstack-nova-compute', 'compute', 'no', 'Running', '2017-08-04 19:26:47', '2125', '', null, 'normal', 'openstack-nova-compute-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'openvswitch-nonetwork', 'compute', 'no', 'Running', '2017-08-04 19:26:47', '1156', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'qga-proxy', 'compute', 'no', 'Running', '2017-08-04 19:26:48', '2129', '', null, 'normal', 'qga-proxy-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'stackwatch-agent', 'compute', 'no', 'Running', '2017-08-04 19:26:48', '28244', '', null, 'normal', 'stackwatch-agent-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute01', '10.0.20.11', 'supervisord', 'compute', 'no', 'Running', '2017-08-04 19:26:49', '1448', '', null, 'normal', 'supervisor-3.1.3-3.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'libvirtd', 'compute', 'no', 'Running', '2017-08-04 19:26:49', '17192', '', null, 'normal', 'libvirt-daemon-1.2.17-13.el7_2.5.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'monitor_host_usb', 'compute', 'no', 'Running', '2017-08-04 19:26:50', '17562', '', null, 'normal', 'monitor-host-usb-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'netcf-transaction', 'compute', 'no', 'Stopped', '2017-08-04 19:26:50', '', '', null, 'normal', 'netcf-libs-0.2.8-1.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'neutron-openvswitch-agent', 'compute', 'no', 'Running', '2017-08-04 19:26:51', '14463', '', null, 'normal', 'openstack-neutron-openvswitch-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'openstack-nova-compute', 'compute', 'no', 'Running', '2017-08-04 19:26:52', '14630', '', null, 'normal', 'openstack-nova-compute-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'openvswitch-nonetwork', 'compute', 'no', 'Running', '2017-08-04 19:26:52', '19188', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'qga-proxy', 'compute', 'no', 'Running', '2017-08-04 19:26:53', '17505', '', null, 'normal', 'qga-proxy-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'stackwatch-agent', 'compute', 'no', 'Running', '2017-08-04 19:26:53', '23146', '', null, 'normal', 'stackwatch-agent-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('compute02', '10.0.20.12', 'supervisord', 'compute', 'no', 'Running', '2017-08-04 19:26:54', '23839', '', null, 'normal', 'supervisor-3.1.3-3.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'elasticsearch', 'controller', 'no', 'Running', '2017-08-04 19:26:54', '4105', '', null, 'normal', 'elasticsearch-2.4.2-1.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'etcd', 'stackwatch', 'no', 'Running', '2017-08-04 19:26:55', '13976', '', null, 'normal', 'etcd-2.3.7-2.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'haproxy', 'controller', 'no', 'Running', '2017-08-04 19:26:56', '17518', '', null, 'normal', 'haproxy-1.5.14-3.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'httpd', 'controller', 'no', 'Running', '2017-08-04 19:26:56', '13266', '', null, 'normal', 'httpd-2.4.6-40.el7.centos.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'influxdb', 'stackwatch', 'no', 'Running', '2017-08-04 19:26:57', '15123', '', null, 'normal', 'file /lib/systemd/system/influxdb.service is not owned by any package');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'mariadb', 'controller', 'no', 'Running', '2017-08-04 19:26:58', '11708', '', null, 'normal', 'mariadb-server-10.1.12-4.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'memcached', 'controller', 'no', 'Running', '2017-08-04 19:26:58', '10294', '', null, 'normal', 'memcached-1.4.25-1.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-08-04 19:26:59', '25081', '', null, 'normal', 'monitor-host-usb-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-08-04 19:27:00', '23446', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-08-04 19:27:00', '26165', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-clb-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:01', '32664', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:01', '32133', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:02', '32257', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-08-04 19:27:03', '', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:03', '31615', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:04', '33150', '', null, 'normal', 'openstack-neutron-metering-agent-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:05', '31685', '', null, 'normal', 'openstack-neutron-openvswitch-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:05', '32485', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-server', 'controller', 'no', 'Running', '2017-08-04 19:27:06', '32668', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:06', '32469', '', null, 'normal', 'openstack-neutron-vpnaas-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-08-04 19:27:07', '31499', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:08', '32440', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-08-04 19:27:08', '31495', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-08-04 19:27:09', '31475', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:10', '31471', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-08-04 19:27:10', '31483', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-08-04 19:27:11', '31503', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-08-04 19:27:12', '31489', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-08-04 19:27:12', '31473', '', null, 'normal', 'openstack-heat-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-08-04 19:27:13', '31455', '', null, 'normal', 'openstack-heat-api-cfn-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-08-04 19:27:13', '32134', '', null, 'normal', 'openstack-heat-engine-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-08-04 19:27:14', '31540', '', null, 'normal', 'openstack-nova-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-08-04 19:27:15', '31497', '', null, 'normal', 'openstack-nova-conductor-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-08-04 19:27:15', '31507', '', null, 'normal', 'openstack-nova-novncproxy-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:16', '31817', '', null, 'normal', 'openstack-nova-scheduler-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-08-04 19:27:17', '31464', '', null, 'normal', 'openstack_log_consumer-1.0.3-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openvswitch', 'controller', 'no', 'Running', '2017-08-04 19:27:17', '9557', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-08-04 19:27:18', '9367', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'pacemaker', 'controller', 'no', 'Running', '2017-08-04 19:27:19', '19196', '', null, 'normal', 'pacemaker-1.1.13-10.el7_2.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-08-04 19:27:19', '13829', '', null, 'normal', 'rabbitmq-server-3.6.5-1.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:20', '17811', '', null, 'normal', 'stackwatch-agent-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'stackwatch-api', 'stackwatch', 'no', 'Running', '2017-08-04 19:27:21', '15959', '', null, 'normal', 'stackwatch-api-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller01', '10.0.20.1', 'supervisord', 'controller', 'no', 'Running', '2017-08-04 19:27:21', '19928', '', null, 'normal', 'supervisor-3.1.3-3.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'elasticsearch', 'controller', 'no', 'Running', '2017-08-04 19:27:22', '29240', '', null, 'normal', 'elasticsearch-2.4.2-1.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'haproxy', 'controller', 'no', 'Running', '2017-08-04 19:27:22', '16144', '', null, 'normal', 'haproxy-1.5.14-3.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'httpd', 'controller', 'no', 'Running', '2017-08-04 19:27:23', '18422', '', null, 'normal', 'httpd-2.4.6-40.el7.centos.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'mariadb', 'controller', 'no', 'Running', '2017-08-04 19:27:24', '11192', '', null, 'normal', 'mariadb-server-10.1.12-4.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'memcached', 'controller', 'no', 'Running', '2017-08-04 19:27:24', '34619', '', null, 'normal', 'memcached-1.4.25-1.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-08-04 19:27:25', '16293', '', null, 'normal', 'monitor-host-usb-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-08-04 19:27:26', '28366', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-08-04 19:27:26', '4419', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-clb-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:27', '13030', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:28', '12558', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:28', '12633', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-08-04 19:27:29', '', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:30', '11949', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:30', '12874', '', null, 'normal', 'openstack-neutron-metering-agent-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:31', '12194', '', null, 'normal', 'openstack-neutron-openvswitch-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:32', '12974', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-server', 'controller', 'no', 'Running', '2017-08-04 19:27:32', '12840', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:33', '12942', '', null, 'normal', 'openstack-neutron-vpnaas-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-08-04 19:27:33', '11947', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:34', '14539', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-08-04 19:27:35', '11978', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-08-04 19:27:35', '11929', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:36', '11922', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-08-04 19:27:37', '11941', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-08-04 19:27:37', '11977', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-08-04 19:27:38', '11971', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-08-04 19:27:39', '11933', '', null, 'normal', 'openstack-heat-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-08-04 19:27:39', '11912', '', null, 'normal', 'openstack-heat-api-cfn-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-08-04 19:27:40', '13219', '', null, 'normal', 'openstack-heat-engine-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-08-04 19:27:41', '12043', '', null, 'normal', 'openstack-nova-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-08-04 19:27:41', '11985', '', null, 'normal', 'openstack-nova-conductor-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-08-04 19:27:42', '11931', '', null, 'normal', 'openstack-nova-novncproxy-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:27:42', '13052', '', null, 'normal', 'openstack-nova-scheduler-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-08-04 19:27:43', '11927', '', null, 'normal', 'openstack_log_consumer-1.0.3-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openvswitch', 'controller', 'no', 'Running', '2017-08-04 19:27:44', '37866', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-08-04 19:27:44', '37635', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'pacemaker', 'controller', 'no', 'Running', '2017-08-04 19:27:45', '17585', '', null, 'normal', 'pacemaker-1.1.13-10.el7_2.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-08-04 19:27:46', '13394', '', null, 'normal', 'rabbitmq-server-3.6.5-1.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:46', '38765', '', null, 'normal', 'stackwatch-agent-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller02', '10.0.20.2', 'supervisord', 'controller', 'no', 'Running', '2017-08-04 19:27:47', '40501', '', null, 'normal', 'supervisor-3.1.3-3.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'elasticsearch', 'controller', 'no', 'Running', '2017-08-04 19:27:48', '28814', '', null, 'normal', 'elasticsearch-2.4.2-1.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'haproxy', 'controller', 'no', 'Running', '2017-08-04 19:27:48', '16153', '', null, 'normal', 'haproxy-1.5.14-3.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'httpd', 'controller', 'no', 'Running', '2017-08-04 19:27:49', '11879', '', null, 'normal', 'httpd-2.4.6-40.el7.centos.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'mariadb', 'controller', 'no', 'Running', '2017-08-04 19:27:49', '11195', '', null, 'normal', 'mariadb-server-10.1.12-4.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'memcached', 'controller', 'no', 'Running', '2017-08-04 19:27:50', '34192', '', null, 'normal', 'memcached-1.4.25-1.el7.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'monitor_host_usb', 'controller', 'no', 'Running', '2017-08-04 19:27:51', '16232', '', null, 'normal', 'monitor-host-usb-0.1-mitaka.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neocu-notification-api', 'neoCU', 'no', 'Running', '2017-08-04 19:27:51', '27763', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neocu-notification-beat', 'neoCU', 'no', 'Running', '2017-08-04 19:27:52', '3961', '', null, 'normal', 'neocu_notification_service-2.0.24-72.ee4798d.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-clb-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:52', '18114', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-dhcp-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:53', '17214', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-interface-monitor-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:54', '17330', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-l3-agent', 'controller', 'no', 'Stopped', '2017-08-04 19:27:54', '', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-metadata-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:55', '16775', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-metering-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:56', '17566', '', null, 'normal', 'openstack-neutron-metering-agent-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-openvswitch-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:56', '16945', '', null, 'normal', 'openstack-neutron-openvswitch-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-qos-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:57', '17510', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-server', 'controller', 'no', 'Running', '2017-08-04 19:27:58', '17772', '', null, 'normal', 'openstack-neutron-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'neutron-vpn-agent', 'controller', 'no', 'Running', '2017-08-04 19:27:58', '17528', '', null, 'normal', 'openstack-neutron-vpnaas-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cinder-api', 'controller', 'no', 'Running', '2017-08-04 19:27:59', '16735', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cinder-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:28:00', '17708', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cinder-volume', 'controller', 'no', 'Running', '2017-08-04 19:28:00', '16749', '', null, 'normal', 'openstack-cinder-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cloudultra-api', 'controller', 'no', 'Running', '2017-08-04 19:28:01', '16719', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cloudultra-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:28:02', '16709', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-cloudultra-worker', 'controller', 'no', 'Running', '2017-08-04 19:28:02', '16711', '', null, 'normal', 'openstack-cloudultra-1.3.5.dev4-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-glance-api', 'controller', 'no', 'Running', '2017-08-04 19:28:03', '16752', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-glance-registry', 'controller', 'no', 'Running', '2017-08-04 19:28:04', '16753', '', null, 'normal', 'openstack-glance-2017.5.16-0.2.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-heat-api', 'controller', 'no', 'Running', '2017-08-04 19:28:04', '16732', '', null, 'normal', 'openstack-heat-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-heat-api-cfn', 'controller', 'no', 'Running', '2017-08-04 19:28:05', '16695', '', null, 'normal', 'openstack-heat-api-cfn-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-heat-engine', 'controller', 'no', 'Running', '2017-08-04 19:28:06', '18000', '', null, 'normal', 'openstack-heat-engine-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-nova-api', 'controller', 'no', 'Running', '2017-08-04 19:28:06', '16832', '', null, 'normal', 'openstack-nova-api-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-nova-conductor', 'controller', 'no', 'Running', '2017-08-04 19:28:07', '16756', '', null, 'normal', 'openstack-nova-conductor-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-nova-novncproxy', 'controller', 'no', 'Running', '2017-08-04 19:28:07', '16730', '', null, 'normal', 'openstack-nova-novncproxy-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack-nova-scheduler', 'controller', 'no', 'Running', '2017-08-04 19:28:08', '17803', '', null, 'normal', 'openstack-nova-scheduler-2017.5.16-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openstack_log_consumer', 'controller', 'no', 'Running', '2017-08-04 19:28:09', '16706', '', null, 'normal', 'openstack_log_consumer-1.0.3-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openvswitch', 'controller', 'no', 'Running', '2017-08-04 19:28:09', '37769', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'openvswitch-nonetwork', 'controller', 'no', 'Running', '2017-08-04 19:28:10', '37539', '', null, 'normal', 'openvswitch-2.6.1.1-1.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'pacemaker', 'controller', 'no', 'Running', '2017-08-04 19:28:11', '17600', '', null, 'normal', 'pacemaker-1.1.13-10.el7_2.4.x86_64');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'rabbitmq-server', 'controller', 'no', 'Running', '2017-08-04 19:28:11', '13404', '', null, 'normal', 'rabbitmq-server-3.6.5-1.el7.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'stackwatch-agent', 'controller', 'no', 'Running', '2017-08-04 19:28:12', '38304', '', null, 'normal', 'stackwatch-agent-2017.2.golang-1.el7.centos.noarch');
INSERT INTO `serviceStatus` VALUES ('controller03', '10.0.20.3', 'supervisord', 'controller', 'no', 'Running', '2017-08-04 19:28:13', '40021', '', null, 'normal', 'supervisor-3.1.3-3.el7.noarch');

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
	in cTime VARCHAR(200), in spid VARCHAR(200), in suggestion VARCHAR(200), in packagInfo VARCHAR(200))
BEGIN
	update serviceStatus set status=sStatus,checkTime=cTime,pid=spid,abnormalAdvice=suggestion,packageVersion=packagInfo where hostIP=hIP and serviceName=hService ;
end
;;
DELIMITER ;
