/*
Navicat MySQL Data Transfer

Source Server         : 120.77.200.21_3306
Source Server Version : 50718
Source Host           : 120.77.200.21:3306
Source Database       : flag

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-10-13 10:22:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for flags
-- ----------------------------
DROP TABLE IF EXISTS `flags`;
CREATE TABLE `flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '完成时间',
  `status` enum('y','n') NOT NULL DEFAULT 'n',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '发表时间',
  `updated_at` datetime DEFAULT NULL,
  `num` int(11) NOT NULL COMMENT '当前是第几个目标',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flags
-- ----------------------------
INSERT INTO `flags` VALUES ('7', '3', '上午好好听课 下午完善博客日志详情页', '2018-10-08 08:00:00', '2018-10-08 23:00:00', 'y', '2018-10-08 21:29:39', '2018-10-08 21:29:39', '1');
INSERT INTO `flags` VALUES ('2', '1', '个人博客后台系统静态页面处理', '2018-10-08 08:00:00', '2018-10-08 14:00:00', 'y', '2018-10-08 21:00:05', '2018-10-08 21:00:05', '1');
INSERT INTO `flags` VALUES ('3', '2', '完成软件系统后台基础页面，300行代码', '2018-10-08 06:00:00', '2018-10-08 18:00:00', 'y', '2018-10-08 19:41:07', '2018-10-08 19:41:07', '2');
INSERT INTO `flags` VALUES ('4', '6', '博客页面前端页面的正常显示', '2018-10-08 00:00:00', '2018-10-08 22:00:00', 'y', '2018-10-08 21:01:24', '2018-10-08 21:01:24', '1');
INSERT INTO `flags` VALUES ('5', '2', '提交行数达到400行', '2018-10-08 19:00:00', '2018-10-08 21:30:00', 'y', '2018-10-08 21:22:18', '2018-10-08 21:22:18', '3');
INSERT INTO `flags` VALUES ('10', '6', '上课老师代码  个人博客的后端页面正常显示 闯哥三个题尽量完成', '2018-10-09 08:00:00', '2018-10-09 23:00:00', 'y', '2018-10-09 20:20:21', '2018-10-09 20:20:21', '2');
INSERT INTO `flags` VALUES ('8', '4', '上午听课，下午巩固完成作业，(如有闲暇，必要完善博客首页)', '2018-10-08 00:00:00', '2018-10-08 21:30:00', 'y', '2018-10-08 21:29:36', '2018-10-08 21:29:36', '1');
INSERT INTO `flags` VALUES ('9', '5', '搞懂雷哥的19个题 然后自己在写一遍 准备老师的面试', '2018-10-08 08:00:00', '2018-10-09 09:30:00', 'y', '2018-10-08 21:29:35', '2018-10-08 21:29:35', '2');
INSERT INTO `flags` VALUES ('11', '1', '写完闯哥留的三个需求问题', '2018-10-09 00:00:00', '2018-10-09 23:00:00', 'y', '2018-10-09 13:46:36', '2018-10-09 13:46:36', '2');
INSERT INTO `flags` VALUES ('12', '4', '上午听课，下午完成任务，再弄弄闯哥的3个问题', '2018-10-09 00:00:00', '2018-10-09 21:30:00', 'y', '2018-10-09 21:39:13', '2018-10-09 21:39:13', '2');
INSERT INTO `flags` VALUES ('13', '3', '上午听课 下午完成三个问题和当天代码', '2018-10-09 08:00:00', '2018-10-09 22:00:00', 'y', '2018-10-09 21:39:43', '2018-10-09 21:39:43', '2');
INSERT INTO `flags` VALUES ('14', '5', '上午听课 下午和晚上第一节课 完成老师的代码', '2018-10-09 02:30:00', '2018-10-09 08:30:00', 'y', '2018-10-09 20:55:56', '2018-10-09 20:55:56', '3');
INSERT INTO `flags` VALUES ('15', '5', '闯哥三个题尽量完成 不会的话问问别人', '2018-10-09 08:30:00', '2018-10-09 09:30:00', 'y', '2018-10-09 20:56:22', '2018-10-09 20:56:22', '4');
INSERT INTO `flags` VALUES ('16', '2', '上午闯哥需求demo完成，下午完成头像修改加后台管理页面布局，晚上完成后台接口，代码提交超过700行', '2018-10-09 08:00:00', '2018-10-09 21:30:00', 'y', '2018-10-09 23:59:38', '2018-10-09 23:59:38', '4');
INSERT INTO `flags` VALUES ('17', '6', '上午听课', '2018-10-10 08:00:00', '2018-10-10 12:00:00', 'y', '2018-10-10 17:38:00', '2018-10-10 17:38:00', '3');
INSERT INTO `flags` VALUES ('18', '6', '下午把上课代码写完', '2018-10-10 15:00:00', '2018-10-10 18:00:00', 'y', '2018-10-10 17:37:43', '2018-10-10 17:37:43', '4');
INSERT INTO `flags` VALUES ('19', '5', '上午好好听课', '2018-10-10 08:00:00', '2018-10-10 12:00:00', 'y', '2018-10-10 11:14:57', '2018-10-10 11:14:57', '4');
INSERT INTO `flags` VALUES ('20', '4', '上午听课，下午完成任务，再补点课外知识', '2018-10-10 00:00:00', '2018-10-10 21:30:00', 'n', '2018-10-09 21:37:01', null, '3');
INSERT INTO `flags` VALUES ('21', '3', '完成博客的增删改', '2018-10-10 08:00:00', '2018-10-10 20:20:00', 'y', '2018-10-10 23:00:59', '2018-10-10 23:00:59', '3');
INSERT INTO `flags` VALUES ('22', '1', '写一个博客后台相册页面', '2018-10-10 14:00:00', '2018-10-10 17:00:00', 'y', '2018-10-10 15:45:12', '2018-10-10 15:45:12', '3');
INSERT INTO `flags` VALUES ('23', '1', '后台可以对日志进行增删改查', '2018-10-10 18:00:00', '2018-10-10 21:00:00', 'y', '2018-10-10 22:31:30', '2018-10-10 22:31:30', '4');
INSERT INTO `flags` VALUES ('24', '2', '软件管理功能', '2018-10-10 08:00:00', '2018-10-10 12:00:00', 'y', '2018-10-10 11:12:12', '2018-10-10 11:12:12', '5');
INSERT INTO `flags` VALUES ('25', '5', '上午听课', '2018-10-11 08:00:00', '2018-10-11 12:00:00', 'y', '2018-10-11 21:29:09', '2018-10-11 21:29:09', '5');
INSERT INTO `flags` VALUES ('26', '5', '下午完成8:20之前完成老师代码 要理解意思', '2018-10-11 14:00:00', '2018-10-10 21:30:00', 'y', '2018-10-11 21:28:56', '2018-10-11 21:28:56', '6');
INSERT INTO `flags` VALUES ('27', '3', '深入理解RBAC基于角色的权限访问控制 ', '2018-10-11 08:00:00', '2018-10-11 12:00:00', 'y', '2018-10-11 17:51:03', '2018-10-11 17:51:03', '4');
INSERT INTO `flags` VALUES ('28', '2', '软件管理功能补全', '2018-10-11 08:00:00', '2018-10-11 12:00:00', 'y', '2018-10-11 21:20:56', '2018-10-11 21:20:56', '6');
INSERT INTO `flags` VALUES ('29', '2', '评论管理补全', '2018-10-11 14:30:00', '2018-10-11 21:30:00', 'y', '2018-10-11 21:21:06', '2018-10-11 21:21:06', '7');
INSERT INTO `flags` VALUES ('30', '4', '上午听课', '2018-10-11 08:00:00', '2018-10-11 12:00:00', 'y', '2018-10-11 22:17:10', '2018-10-11 22:17:10', '3');
INSERT INTO `flags` VALUES ('31', '4', '下午完成课堂知识', '2018-10-11 14:30:00', '2018-10-11 21:30:00', 'y', '2018-10-11 22:17:01', '2018-10-11 22:17:01', '4');
INSERT INTO `flags` VALUES ('32', '6', '上午听课', '2018-10-11 08:00:00', '2018-10-11 12:00:00', 'y', '2018-10-11 14:19:31', '2018-10-11 14:19:31', '4');
INSERT INTO `flags` VALUES ('33', '1', '完成老师留的4个任务', '2018-10-11 10:00:00', '2018-10-11 15:00:00', 'y', '2018-10-11 14:31:19', '2018-10-11 14:31:19', '5');
INSERT INTO `flags` VALUES ('34', '1', '个人博客后台管理日志增删改查，前台显示', '2018-10-11 16:00:00', '2018-10-11 22:00:00', 'y', '2018-10-11 21:41:47', '2018-10-11 21:41:47', '6');
INSERT INTO `flags` VALUES ('35', '6', '完成上课老师布置的4个题', '2018-10-11 14:00:00', '2018-10-11 18:30:00', 'y', '2018-10-11 17:17:08', '2018-10-11 17:17:08', '5');
INSERT INTO `flags` VALUES ('36', '6', '个人博客的 表的xmind建立', '2018-10-11 17:30:00', '2018-10-11 21:30:00', 'y', '2018-10-11 20:19:38', '2018-10-11 20:19:38', '6');
INSERT INTO `flags` VALUES ('37', '3', '完成博客后台页面布局', '2018-10-11 16:40:00', '2018-10-11 21:30:00', 'y', '2018-10-11 23:03:49', '2018-10-11 23:03:49', '5');
INSERT INTO `flags` VALUES ('38', '6', '上课听课', '2018-10-12 08:00:00', '2018-10-12 12:00:00', 'y', '2018-10-12 16:39:27', '2018-10-12 16:39:27', '7');
INSERT INTO `flags` VALUES ('39', '6', '后台的个人资料模块的增删改查', '2018-10-12 14:00:00', '2018-10-12 22:00:00', 'n', '2018-10-13 09:42:22', '2018-10-13 09:42:22', '8');
INSERT INTO `flags` VALUES ('40', '5', '上午听课 ', '2018-10-12 08:00:00', '2018-10-12 00:12:00', 'y', '2018-10-12 23:44:32', '2018-10-12 23:44:32', '6');
INSERT INTO `flags` VALUES ('41', '5', '下午晚上完成老师代码(要理解代码)', '2018-10-12 14:30:00', '2018-10-12 21:30:00', 'y', '2018-10-12 23:44:21', '2018-10-12 23:44:21', '7');
INSERT INTO `flags` VALUES ('42', '2', '软件下载系统前端交工，完成api文档', '2018-10-12 08:00:00', '2018-10-12 12:00:00', 'y', '2018-10-12 23:58:14', '2018-10-12 23:58:14', '8');
INSERT INTO `flags` VALUES ('43', '2', '快应用helloword！', '2018-10-12 14:30:00', '2018-10-11 18:30:00', 'y', '2018-10-12 23:58:05', '2018-10-12 23:58:05', '9');
INSERT INTO `flags` VALUES ('44', '3', '讲课听课 不讲的话 做12个需求中的5个', '2018-10-12 08:00:00', '2018-10-12 12:00:00', 'y', '2018-10-12 21:06:48', '2018-10-12 21:06:48', '6');
INSERT INTO `flags` VALUES ('45', '2', '确定快应用需求模块，引导会议', '2018-10-11 19:50:00', '2018-10-11 21:30:00', 'y', '2018-10-12 23:58:21', '2018-10-12 23:58:21', '10');
INSERT INTO `flags` VALUES ('46', '4', '上午听课', '2018-10-12 08:00:00', '2018-10-12 12:00:00', 'y', '2018-10-12 23:58:54', '2018-10-12 23:58:54', '4');
INSERT INTO `flags` VALUES ('47', '4', '下午完成课堂内容', '2018-10-12 14:00:00', '2018-10-11 18:30:00', 'y', '2018-10-12 23:58:43', '2018-10-12 23:58:43', '5');
INSERT INTO `flags` VALUES ('48', '4', '晚上争取可以看完PHP各版本差异', '2018-10-12 19:00:00', '2018-10-12 21:30:00', 'n', '2018-10-11 23:12:45', null, '6');
INSERT INTO `flags` VALUES ('49', '1', '完成考试内容', '2018-10-12 14:00:00', '2018-10-12 18:30:00', 'y', '2018-10-12 21:41:42', '2018-10-12 21:41:42', '7');
INSERT INTO `flags` VALUES ('50', '3', '完善上午测试的代码', '2018-10-12 14:00:00', '2018-10-12 21:30:00', 'y', '2018-10-12 23:59:19', '2018-10-12 23:59:19', '7');
INSERT INTO `flags` VALUES ('51', '5', '如果老师没安排的话 继续写项目', '2018-10-13 08:00:00', '2018-10-13 21:30:00', 'n', '2018-10-12 23:45:39', null, '7');
INSERT INTO `flags` VALUES ('52', '2', '安卓模拟器+快应用demo+需求', '2018-10-13 09:00:00', '2018-10-13 19:00:00', 'n', '2018-10-13 00:02:56', null, '11');
INSERT INTO `flags` VALUES ('53', '3', 'flag页面添加毕业倒计时、分页、页面分六个模块、添加筛选搜索功能', '2018-10-13 08:00:00', '2018-10-13 22:00:00', 'n', '2018-10-13 00:52:11', null, '8');
INSERT INTO `flags` VALUES ('54', '1', '博客后台图片裁切，多图上传功能', '2018-10-13 12:00:00', '2018-10-13 17:00:00', 'n', '2018-10-13 08:57:10', null, '8');
INSERT INTO `flags` VALUES ('55', '4', '完成课堂任务', '2018-10-13 09:00:00', '2018-10-13 18:30:00', 'n', '2018-10-13 09:35:28', null, '5');
INSERT INTO `flags` VALUES ('56', '6', '尽量做老师的题', '2018-10-13 10:00:00', '2018-10-13 18:30:00', 'n', '2018-10-13 09:43:39', null, '9');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '石学文', 'sxw123');
INSERT INTO `users` VALUES ('2', '张亚泽', 'zyz123');
INSERT INTO `users` VALUES ('3', '冉江华', 'rjh123');
INSERT INTO `users` VALUES ('4', '芦奕明', 'lym123');
INSERT INTO `users` VALUES ('5', '齐福伦', 'qfl123');
INSERT INTO `users` VALUES ('6', '彭文双', 'pws123');