/*
Navicat MySQL Data Transfer

Source Server         : sql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : pvsystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-16 22:32:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cable`
-- ----------------------------
DROP TABLE IF EXISTS `cable`;
CREATE TABLE `cable` (
  `cable_id` int(11) NOT NULL,
  `allowableCarryingCapacity` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cable
-- ----------------------------

-- ----------------------------
-- Table structure for `centralizedinverter`
-- ----------------------------
DROP TABLE IF EXISTS `centralizedinverter`;
CREATE TABLE `centralizedinverter` (
  `centralized_inverter_id` int(11) NOT NULL,
  `manufacturersName` varchar(255) DEFAULT NULL,
  `maxACOutputCurrent` int(11) NOT NULL,
  `maxDCInputCurrent` int(11) NOT NULL,
  `maxDCInputPower` int(11) NOT NULL,
  `maxEfficiency` double NOT NULL,
  `maxInputVoltage` int(11) NOT NULL,
  `maxOutputPower` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mppLVL` int(11) NOT NULL,
  `mppVL` int(11) NOT NULL,
  `ratedACOutputPower` int(11) NOT NULL,
  `ratedGridVoltage` int(11) NOT NULL,
  `startVoltage` int(11) NOT NULL,
  PRIMARY KEY (`centralized_inverter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of centralizedinverter
-- ----------------------------

-- ----------------------------
-- Table structure for `centralizedtransform`
-- ----------------------------
DROP TABLE IF EXISTS `centralizedtransform`;
CREATE TABLE `centralizedtransform` (
  `centralized_transform_id` int(11) NOT NULL,
  `cable_id` int(11) DEFAULT NULL,
  `centralized_inverter_id` int(11) DEFAULT NULL,
  `dcbox_id` int(11) DEFAULT NULL,
  `dcbus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`centralized_transform_id`),
  KEY `FKmcegh8v948seuqco8248e1utr` (`cable_id`),
  KEY `FKhhh9teymlq5pru9b1q5e1tvwh` (`centralized_inverter_id`),
  KEY `FKo7fe1q5wicusamr8mlb4vm75g` (`dcbox_id`),
  KEY `FK5seo3gal6mew2pk4eld4r0nsd` (`dcbus_id`),
  CONSTRAINT `FK5seo3gal6mew2pk4eld4r0nsd` FOREIGN KEY (`dcbus_id`) REFERENCES `dcbus` (`dcbus_id`),
  CONSTRAINT `FKhhh9teymlq5pru9b1q5e1tvwh` FOREIGN KEY (`centralized_inverter_id`) REFERENCES `centralizedinverter` (`centralized_inverter_id`),
  CONSTRAINT `FKmcegh8v948seuqco8248e1utr` FOREIGN KEY (`cable_id`) REFERENCES `cable` (`cable_id`),
  CONSTRAINT `FKo7fe1q5wicusamr8mlb4vm75g` FOREIGN KEY (`dcbox_id`) REFERENCES `dcbox` (`dcbox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of centralizedtransform
-- ----------------------------

-- ----------------------------
-- Table structure for `climaticdata`
-- ----------------------------
DROP TABLE IF EXISTS `climaticdata`;
CREATE TABLE `climaticdata` (
  `climaticId` int(11) NOT NULL,
  `humidity` double NOT NULL,
  `irradiance` double NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `month` int(11) NOT NULL,
  `temperature` double NOT NULL,
  `windSpeed` double NOT NULL,
  PRIMARY KEY (`climaticId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of climaticdata
-- ----------------------------

-- ----------------------------
-- Table structure for `dcbox`
-- ----------------------------
DROP TABLE IF EXISTS `dcbox`;
CREATE TABLE `dcbox` (
  `dcbox_id` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `limitOfATOCV` int(11) NOT NULL,
  `limitOfIOTotalCurrent` int(11) NOT NULL,
  `limitOfInputDCPower` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `numOfAccessDCChannels` int(11) NOT NULL,
  PRIMARY KEY (`dcbox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dcbox
-- ----------------------------

-- ----------------------------
-- Table structure for `dcbus`
-- ----------------------------
DROP TABLE IF EXISTS `dcbus`;
CREATE TABLE `dcbus` (
  `dcbus_id` int(11) NOT NULL,
  `haveAuxiliaryPower` bit(1) NOT NULL,
  `haveDCCB` bit(1) NOT NULL,
  `haveLPM` bit(1) NOT NULL,
  `haveMonitoringUnit` bit(1) NOT NULL,
  `inputCurrentLimit` int(11) NOT NULL,
  `manufacturersName` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `numOfInputs` int(11) NOT NULL,
  PRIMARY KEY (`dcbus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dcbus
-- ----------------------------

-- ----------------------------
-- Table structure for `groupinverter`
-- ----------------------------
DROP TABLE IF EXISTS `groupinverter`;
CREATE TABLE `groupinverter` (
  `group_inverter_id` int(11) NOT NULL,
  `manufacturersName` varchar(255) DEFAULT NULL,
  `maxAllowedInputCurrent` double NOT NULL,
  `maxEfficiency` double NOT NULL,
  `maxInputCurrent` double NOT NULL,
  `maxInputPower` int(11) NOT NULL,
  `maxInputVoltage` int(11) NOT NULL,
  `maxOutputCurrent` double NOT NULL,
  `maxOutputPower` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mppLVL` int(11) NOT NULL,
  `mppVL` int(11) NOT NULL,
  `numOfMPPT` int(11) NOT NULL,
  `ratedInputVoltage` int(11) NOT NULL,
  `ratedOutputPower` int(11) NOT NULL,
  PRIMARY KEY (`group_inverter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupinverter
-- ----------------------------

-- ----------------------------
-- Table structure for `grouptransformer`
-- ----------------------------
DROP TABLE IF EXISTS `grouptransformer`;
CREATE TABLE `grouptransformer` (
  `group_transformer_id` int(11) NOT NULL,
  `cable_id` int(11) DEFAULT NULL,
  `group_inverter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_transformer_id`),
  KEY `FKqa5fv8ppdhaoya2nv4j7ros43` (`cable_id`),
  KEY `FK4jffbtg5erkc3eb31l57ux08f` (`group_inverter_id`),
  CONSTRAINT `FK4jffbtg5erkc3eb31l57ux08f` FOREIGN KEY (`group_inverter_id`) REFERENCES `groupinverter` (`group_inverter_id`),
  CONSTRAINT `FKqa5fv8ppdhaoya2nv4j7ros43` FOREIGN KEY (`cable_id`) REFERENCES `cable` (`cable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grouptransformer
-- ----------------------------

-- ----------------------------
-- Table structure for `highpressuredevice`
-- ----------------------------
DROP TABLE IF EXISTS `highpressuredevice`;
CREATE TABLE `highpressuredevice` (
  `high_pressure_device_id` int(11) NOT NULL,
  `deviceSize` int(11) NOT NULL,
  `kv038_id` int(11) DEFAULT NULL,
  `kv10_id` int(11) DEFAULT NULL,
  `kv35_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`high_pressure_device_id`),
  KEY `FKf1pbrkle2oow00oem4o84ccfr` (`kv038_id`),
  KEY `FKffrd2a3jwhdvbddexs27uk45c` (`kv10_id`),
  KEY `FKlpdbhf090se7vv6i29okia571` (`kv35_id`),
  CONSTRAINT `FKf1pbrkle2oow00oem4o84ccfr` FOREIGN KEY (`kv038_id`) REFERENCES `kv038` (`kv038_id`),
  CONSTRAINT `FKffrd2a3jwhdvbddexs27uk45c` FOREIGN KEY (`kv10_id`) REFERENCES `kv10` (`kv10_id`),
  CONSTRAINT `FKlpdbhf090se7vv6i29okia571` FOREIGN KEY (`kv35_id`) REFERENCES `kv35` (`kv35_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of highpressuredevice
-- ----------------------------

-- ----------------------------
-- Table structure for `kv038`
-- ----------------------------
DROP TABLE IF EXISTS `kv038`;
CREATE TABLE `kv038` (
  `kv038_id` int(11) NOT NULL,
  `low_switch_cabinet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`kv038_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kv038
-- ----------------------------

-- ----------------------------
-- Table structure for `kv10`
-- ----------------------------
DROP TABLE IF EXISTS `kv10`;
CREATE TABLE `kv10` (
  `kv10_id` int(11) NOT NULL,
  `low_switch_cabinet_id` int(11) DEFAULT NULL,
  `step_up_transformer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`kv10_id`),
  KEY `FKjr7jygw42s0jswu576d0sn65d` (`step_up_transformer_id`),
  CONSTRAINT `FKjr7jygw42s0jswu576d0sn65d` FOREIGN KEY (`step_up_transformer_id`) REFERENCES `stepuptransformer` (`step_up_transformer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kv10
-- ----------------------------

-- ----------------------------
-- Table structure for `kv35`
-- ----------------------------
DROP TABLE IF EXISTS `kv35`;
CREATE TABLE `kv35` (
  `kv35_id` int(11) NOT NULL,
  `high_switch_cabinet_id` int(11) DEFAULT NULL,
  `low_switch_cabinet_id` int(11) DEFAULT NULL,
  `step_up_transformer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`kv35_id`),
  KEY `FKkoobo1r9ieh0wptp9b8lm82n5` (`step_up_transformer_id`),
  CONSTRAINT `FKkoobo1r9ieh0wptp9b8lm82n5` FOREIGN KEY (`step_up_transformer_id`) REFERENCES `stepuptransformer` (`step_up_transformer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kv35
-- ----------------------------

-- ----------------------------
-- Table structure for `lowpressuredevice`
-- ----------------------------
DROP TABLE IF EXISTS `lowpressuredevice`;
CREATE TABLE `lowpressuredevice` (
  `lowPressureDeviceId` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `centralized_transform_id` int(11) DEFAULT NULL,
  `group_transformer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lowPressureDeviceId`),
  KEY `FK9mp587eti1nungse3gajcfao1` (`centralized_transform_id`),
  KEY `FKd37wfruqfrbxbifpjbabjisqt` (`group_transformer_id`),
  CONSTRAINT `FK9mp587eti1nungse3gajcfao1` FOREIGN KEY (`centralized_transform_id`) REFERENCES `centralizedtransform` (`centralized_transform_id`),
  CONSTRAINT `FKd37wfruqfrbxbifpjbabjisqt` FOREIGN KEY (`group_transformer_id`) REFERENCES `grouptransformer` (`group_transformer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lowpressuredevice
-- ----------------------------

-- ----------------------------
-- Table structure for `permit`
-- ----------------------------
DROP TABLE IF EXISTS `permit`;
CREATE TABLE `permit` (
  `permitId` int(11) NOT NULL,
  `permitName` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`permitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permit
-- ----------------------------

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `projectId` int(11) NOT NULL,
  `buildDate` datetime DEFAULT NULL,
  `col` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `row` int(11) NOT NULL,
  `site` varchar(255) DEFAULT NULL,
  `climaticId` int(11) DEFAULT NULL,
  `lowPressureDeviceId` int(11) DEFAULT NULL,
  `high_pressure_device_id` int(11) DEFAULT NULL,
  `PVPId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`projectId`),
  KEY `FK81h3howstod6vkq85gwhscda0` (`climaticId`),
  KEY `FK8jq8vgvr0s90uerj6lfuop6wu` (`lowPressureDeviceId`),
  KEY `FK6080fqt6hw99e1yfq714tprix` (`high_pressure_device_id`),
  KEY `FK9kpxnhnvvjr3ghq8f0mquqjs6` (`PVPId`),
  KEY `FK1wtggfel74ptpbx1fbnav6bjy` (`userId`),
  CONSTRAINT `FK1wtggfel74ptpbx1fbnav6bjy` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK6080fqt6hw99e1yfq714tprix` FOREIGN KEY (`high_pressure_device_id`) REFERENCES `lowpressuredevice` (`lowPressureDeviceId`),
  CONSTRAINT `FK81h3howstod6vkq85gwhscda0` FOREIGN KEY (`climaticId`) REFERENCES `climaticdata` (`climaticId`),
  CONSTRAINT `FK8jq8vgvr0s90uerj6lfuop6wu` FOREIGN KEY (`lowPressureDeviceId`) REFERENCES `highpressuredevice` (`high_pressure_device_id`),
  CONSTRAINT `FK9kpxnhnvvjr3ghq8f0mquqjs6` FOREIGN KEY (`PVPId`) REFERENCES `pvpanel` (`PVPId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for `pvpanel`
-- ----------------------------
DROP TABLE IF EXISTS `pvpanel`;
CREATE TABLE `pvpanel` (
  `PVPId` int(11) NOT NULL,
  `TCmaxPower` double NOT NULL,
  `TCshortCircuitCurrent` double NOT NULL,
  `TCsopenCircuitVoltage` double NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `length` double NOT NULL,
  `lowerOperatingTemperature` double NOT NULL,
  `maxPowerCurrentl` double NOT NULL,
  `maxPowerVoltage` double NOT NULL,
  `openCircuitVoltage` double NOT NULL,
  `peakPower` double NOT NULL,
  `series` varchar(255) DEFAULT NULL,
  `shortCircuitCurrent` double NOT NULL,
  `transferPower` double NOT NULL,
  `upperOperatingTemperature` double NOT NULL,
  `weight` double NOT NULL,
  `width` double NOT NULL,
  PRIMARY KEY (`PVPId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvpanel
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleId` varchar(255) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_permit`
-- ----------------------------
DROP TABLE IF EXISTS `role_permit`;
CREATE TABLE `role_permit` (
  `roleId` varchar(255) NOT NULL,
  `permitId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`permitId`),
  KEY `FK1idg0f7oktnapj6fb4b73lle3` (`permitId`),
  CONSTRAINT `FK1idg0f7oktnapj6fb4b73lle3` FOREIGN KEY (`permitId`) REFERENCES `permit` (`permitId`),
  CONSTRAINT `FK4dqy49cdfrc1ux10xcv13y9i1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permit
-- ----------------------------

-- ----------------------------
-- Table structure for `stepuptransformer`
-- ----------------------------
DROP TABLE IF EXISTS `stepuptransformer`;
CREATE TABLE `stepuptransformer` (
  `step_up_transformer_id` int(11) NOT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  `highPressureBranchRange` varchar(255) DEFAULT NULL,
  `linkedGroupId` int(11) NOT NULL,
  `loadLoss` double NOT NULL,
  `modelNumber` varchar(255) DEFAULT NULL,
  `noloadElectricity` double NOT NULL,
  `noloadLoss` double NOT NULL,
  `ratedCapacity` double NOT NULL,
  `ratedVoltage` double NOT NULL,
  `shortCircuitImpedance` double NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`step_up_transformer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stepuptransformer
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `FK8inc89ty03smkvd9txfpjvn3m` (`roleId`),
  CONSTRAINT `FK8inc89ty03smkvd9txfpjvn3m` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
