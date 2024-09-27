
CREATE DATABASE IF NOT EXISTS aiot_back_system;
USE aiot_back_system;
-- 在此插入你的 SQL 脚本来创建表和插入数据


/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : aiot_back_system

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 30/05/2024 16:38:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abnormal_info
-- ----------------------------
DROP TABLE IF EXISTS `abnormal_info`;
CREATE TABLE `abnormal_info`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'AbnormalTypeEnum',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'AbnormalTypeEnum解析',
  `isPredicted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否是预测',
  `createTime` bigint NULL DEFAULT NULL COMMENT '创建时间',
  `grade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '等级  A B C \'一级\' ； \'二级\' ； \'三级\'',
  `bindId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常对象',
  `bindType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '异常对象类型 大数据节点还是IoT设备 bigData AIoT',
  `abnormalProbability` decimal(10, 4) NULL DEFAULT NULL,
  `process` int NULL DEFAULT NULL COMMENT '0 处理中 1审核中 2已完成',
  `typeEnum` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `nodeType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of abnormal_info
-- ----------------------------
INSERT INTO `abnormal_info` VALUES ('361c31e9-77a3-4a99-9c9a-71c83f88de04', '4001', '', '1', 1705653271936, 'A', 'GA61512', 'AIoT', 97.0990, 2, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('3df38325-eedc-4282-9f0e-a40f0e0d0854', '4001', '', '0', 1705653271936, 'A', 'GA61511', 'AIoT', 58.4010, 2, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('4fa8fc8e-2d67-404a-9d10-22cbdbec3e69', '4001', '', '0', 1705653271936, 'C', 'GA61510032', 'AIoT', 54.6190, 2, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('55cda213-ef72-4c84-894c-9bd22c929353', '1002', '', '1', 1705666972529, 'C', '1001', 'worker', 14.9253, 0, '{\"name\":\"Spark-Task Exception\",\"content\":\"\\n    16/04/07 10:46:31 WARN executor.CoarseGrainedExecutorBackend: An unknown (mesos-slave-24:43670) driver disconnected.\\n16/04/07 10:46:31 ERROR executor.CoarseGrainedExecutorBackend: Driver 10.10.34.34:43670 disassociated! Shutting down.\\n16/04/07 10:46:31 ERROR executor.Executor: Exception in task 8.0 in stage 0.0 (TID 11)\\njava.io.IOException: Failed to create local dir in /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-bcb1cfe2-beb8-4f46-b500-2a6945695a47/04.\\n\\tat org.apache.spark.storage.DiskBlockManager.getFile(DiskBlockManager.scala:73)\\n\\tat org.apache.spark.storage.DiskBlockManager.getFile(DiskBlockManager.scala:83)\\n\\tat org.apache.spark.shuffle.IndexShuffleBlockResolver.getDataFile(IndexShuffleBlockResolver.scala:53)\\n\\tat org.apache.spark.shuffle.IndexShuffleBlockResolver.writeIndexFileAndCommit(IndexShuffleBlockResolver.scala:154)\\n\\tat org.apache.spark.shuffle.sort.BypassMergeSortShuffleWriter.write(BypassMergeSortShuffleWriter.java:128)\\n\\tat org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)\\n\\tat org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)\\n\\tat org.apache.spark.scheduler.Task.run(Task.scala:89)\\n\\tat org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"根据错误信息，查询Spark任务失败，查看失败原因。\"}', '{\"name\":\"Spark-Task Exception\",\"content\":\"\\n    16/04/07 10:46:31 WARN executor.CoarseGrainedExecutorBackend: An unknown (mesos-slave-24:43670) driver disconnected.\\n16/04/07 10:46:31 ERROR executor.CoarseGrainedExecutorBackend: Driver 10.10.34.34:43670 disassociated! Shutting down.\\n16/04/07 10:46:31 ERROR executor.Executor: Exception in task 8.0 in stage 0.0 (TID 11)\\njava.io.IOException: Failed to create local dir in /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-bcb1cfe2-beb8-4f46-b500-2a6945695a47/04.\\n\\tat org.apache.spark.storage.DiskBlockManager.getFile(DiskBlockManager.scala:73)\\n\\tat org.apache.spark.storage.DiskBlockManager.getFile(DiskBlockManager.scala:83)\\n\\tat org.apache.spark.shuffle.IndexShuffleBlockResolver.getDataFile(IndexShuffleBlockResolver.scala:53)\\n\\tat org.apache.spark.shuffle.IndexShuffleBlockResolver.writeIndexFileAndCommit(IndexShuffleBlockResolver.scala:154)\\n\\tat org.apache.spark.shuffle.sort.BypassMergeSortShuffleWriter.write(BypassMergeSortShuffleWriter.java:128)\\n\\tat org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:73)\\n\\tat org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:41)\\n\\tat org.apache.spark.scheduler.Task.run(Task.scala:89)\\n\\tat org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:213)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"根据错误信息，查询Spark任务失败，查看失败原因。\"}', 'bigData');
INSERT INTO `abnormal_info` VALUES ('5d983ac0-4d91-4418-9e65-7d7900366c93', '1001', '', '1', 1705666972529, 'C', '1002', 'worker', 99.2745, 1, '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', 'bigData');
INSERT INTO `abnormal_info` VALUES ('659c6cd6-c42f-4c98-81b3-6441bcc6a861', '4002', '', '1', 1705653271936, 'B', 'GA61513', 'AIoT', 79.5555, 1, '{\"name\":\"AIoT-0x7200/-29184/MBEDTLS_ERR_SSL_INVALID_RECORD\",\"content\":\"收到非法数据：An invalid SSL record was received\",\"solution\":\"TCP/IP协议栈收到的数据包出错, 需要排查协议栈方面问题\\nSSL所运行的线程栈被设置的过小, 需调整线程栈大小\\nSSL被配置的最大报文长度太小, 当网络报文长度超过该数值时, 则可能出现0x7200错误\\n可调整 MBEDTLS_SSL_MAX_CONTENT_LEN 的值, 重新编译再试\\nMBEDTLS_SSL_MAX_CONTENT_LEN 的值, 目前已知最小不能小于 4096\"}', '{\"name\":\"AIoT-0x7200/-29184/MBEDTLS_ERR_SSL_INVALID_RECORD\",\"content\":\"收到非法数据：An invalid SSL record was received\",\"solution\":\"TCP/IP协议栈收到的数据包出错, 需要排查协议栈方面问题\\nSSL所运行的线程栈被设置的过小, 需调整线程栈大小\\nSSL被配置的最大报文长度太小, 当网络报文长度超过该数值时, 则可能出现0x7200错误\\n可调整 MBEDTLS_SSL_MAX_CONTENT_LEN 的值, 重新编译再试\\nMBEDTLS_SSL_MAX_CONTENT_LEN 的值, 目前已知最小不能小于 4096\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('6c8a1811-a15a-416a-9d39-ab303cdffc59', '4001', '', '1', 1705653271936, 'C', 'GA61510041', 'AIoT', 10.8037, 2, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('77bb6ba8-838d-4ab2-8ca7-b42a453c321b', '1001', '', '0', 1705666972529, 'C', '1003', 'worker', 13.0343, 0, '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', 'bigData');
INSERT INTO `abnormal_info` VALUES ('7a57b586-e0a5-4997-bbc5-2552f5d1f9d4', '4002', '', '0', 1705653271936, 'C', 'GA61510011', 'AIoT', 44.4593, 0, '{\"name\":\"AIoT-0x7200/-29184/MBEDTLS_ERR_SSL_INVALID_RECORD\",\"content\":\"收到非法数据：An invalid SSL record was received\",\"solution\":\"TCP/IP协议栈收到的数据包出错, 需要排查协议栈方面问题\\nSSL所运行的线程栈被设置的过小, 需调整线程栈大小\\nSSL被配置的最大报文长度太小, 当网络报文长度超过该数值时, 则可能出现0x7200错误\\n可调整 MBEDTLS_SSL_MAX_CONTENT_LEN 的值, 重新编译再试\\nMBEDTLS_SSL_MAX_CONTENT_LEN 的值, 目前已知最小不能小于 4096\"}', '{\"name\":\"AIoT-0x7200/-29184/MBEDTLS_ERR_SSL_INVALID_RECORD\",\"content\":\"收到非法数据：An invalid SSL record was received\",\"solution\":\"TCP/IP协议栈收到的数据包出错, 需要排查协议栈方面问题\\nSSL所运行的线程栈被设置的过小, 需调整线程栈大小\\nSSL被配置的最大报文长度太小, 当网络报文长度超过该数值时, 则可能出现0x7200错误\\n可调整 MBEDTLS_SSL_MAX_CONTENT_LEN 的值, 重新编译再试\\nMBEDTLS_SSL_MAX_CONTENT_LEN 的值, 目前已知最小不能小于 4096\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('7c9f7cc2-b97e-4bc3-a226-db5fcf327b83', '4001', '', '1', 1705653271936, 'B', 'GA61514', 'AIoT', 45.6193, 0, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('81dac4f6-ad9a-4efb-8a9f-f4064fbfee63', '4001', '', '1', 1705653271936, 'C', 'GA61510042', 'AIoT', 26.5538, 0, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('b931195d-470a-49b6-a614-a3437cb05fc1', '4001', '', '0', 1705653271936, 'C', 'GA61510031', 'AIoT', 81.2790, 0, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');
INSERT INTO `abnormal_info` VALUES ('be314038-a269-42d8-ba07-3ecf7bc47720', '1001', '', '0', 1705666972529, 'C', '1', 'master', 49.3697, 2, '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', 'bigData');
INSERT INTO `abnormal_info` VALUES ('da489155-2600-4c4d-84d7-052436202d84', '1001', '', '1', 1705666972529, 'C', '1004', 'worker', 15.2000, 0, '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', '{\"name\":\"Spark-IO错误\",\"content\":\"\\n    java.io.IOException: Failed to delete: /opt/hdfs/nodemanager/usercache/curi/appcache/application_1448006111297_0137/blockmgr-0395885c-99ff-427e-885a-34d036a28999\\n\\tat org.apache.spark.util.Utils$.deleteRecursively(Utils.scala:928)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:174)\\n\\tat org.apache.spark.storage.DiskBlockManager$$anonfun$org$apache$spark$storage$DiskBlockManager$$doStop$1.apply(DiskBlockManager.scala:170)\\n\\tat scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)\\n\\tat scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:108)\\n\\tat org.apache.spark.storage.DiskBlockManager.org$apache$spark$storage$DiskBlockManager$$doStop(DiskBlockManager.scala:170)\\n\\tat org.apache.spark.storage.DiskBlockManager.stop(DiskBlockManager.scala:162)\\n\\tat org.apache.spark.storage.BlockManager.stop(BlockManager.scala:1233)\\n\\tat org.apache.spark.SparkEnv.stop(SparkEnv.scala:96)\\n\\tat org.apache.spark.executor.Executor.stop(Executor.scala:143)\\n\\tat org.apache.spark.executor.CoarseGrainedExecutorBackend$$anonfun$receive$1.applyOrElse(CoarseGrainedExecutorBackend.scala:115)\\n\\tat org.apache.spark.rpc.netty.Inbox$$anonfun$process$1.apply$mcV$sp(Inbox.scala:116)\\n\\tat org.apache.spark.rpc.netty.Inbox.safelyCall(Inbox.scala:204)\\n\\tat org.apache.spark.rpc.netty.Inbox.process(Inbox.scala:100)\\n\\tat org.apache.spark.rpc.netty.Dispatcher$MessageLoop.run(Dispatcher.scala:215)\\n\\tat java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)\\n\\tat java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)\\n\\tat java.lang.Thread.run(Thread.java:745)\\n    \",\"solution\":\"\\n    确认文件或目录是否存在： 确保指定的路径下的文件或目录确实存在。\\n\\n检查权限： 确保执行删除操作的用户具有足够的权限，包括对父目录的写权限。\\n\\n检查文件是否被占用： 确保没有其他进程正在使用该文件或目录。您可以使用操作系统的工具来查看文件的占用情况。\\n\\n检查文件系统状态： 检查文件系统是否正常，没有只读等问题。\\n\\n验证路径的正确性： 确保指定的路径中的所有目录都存在，没有拼写错误或其他问题。\\n    \"}', 'bigData');
INSERT INTO `abnormal_info` VALUES ('fd710a31-e8ee-4a02-8598-f2d51dc71d62', '4001', '', '1', 1705653271936, 'C', 'GA61510033', 'AIoT', 13.6634, 1, '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', '{\"name\":\"AIoT-0x7880/-30848/MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY\",\"content\":\"云端把SSL连接断开了：The peer notified us that the connection is going to be closed\",\"solution\":\"设备端数据连接过于频繁, 触发云端限流, 断开设备\\n建议关闭设备, 等待一段时间（5分钟以后）再发起连接重试，观察错误仍会出现\\n有多个设备使用相同的productKey和deviceName与云端建立连接，导致被云端踢下线\\n建议检查当前使用的设备证书（ProductKey、DeviceName、DeviceSecret）是否可能被他人使用\\n设备端保活出错, 没有及时发送 MQTT ping packet，或者被发送了没有及时到达云端\\n建议用抓包等方式确认心跳包有成功发出或者观察有没有收到来自服务端的 MQTT ping response\\n如果一次都不能连接成功，可以考虑是不是大小端字节序不匹配\\n目前C-SDK 默认是适配小端设备, 如果需在大端硬件上工作，请添加全局编译选项 REVERSED\"}', 'aiot');

-- ----------------------------
-- Table structure for aiot
-- ----------------------------
DROP TABLE IF EXISTS `aiot`;
CREATE TABLE `aiot`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bigNodeId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '大数据节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aiot
-- ----------------------------
INSERT INTO `aiot` VALUES ('GA61510011', 'GA61510011', '1001');
INSERT INTO `aiot` VALUES ('GA61510021', 'GA61510021', '1002');
INSERT INTO `aiot` VALUES ('GA61510031', 'GA61510031', '1003');
INSERT INTO `aiot` VALUES ('GA61510032', 'GA61510032', '1003');
INSERT INTO `aiot` VALUES ('GA61510033', 'GA61510033', '1003');
INSERT INTO `aiot` VALUES ('GA61510041', 'GA61510041', '1004');
INSERT INTO `aiot` VALUES ('GA61510042', 'GA61510042', '1004');
INSERT INTO `aiot` VALUES ('GA61510051', 'GA61510051', '1005');
INSERT INTO `aiot` VALUES ('GA61510061', 'GA61510061', '1006');
INSERT INTO `aiot` VALUES ('GA61510071', 'GA61510071', '1007');
INSERT INTO `aiot` VALUES ('GA61510081', 'GA61510081', '1008');
INSERT INTO `aiot` VALUES ('GA61511', 'GA61511', '1');
INSERT INTO `aiot` VALUES ('GA61512', 'GA61512', '1');
INSERT INTO `aiot` VALUES ('GA61513', 'GA61513', '1');
INSERT INTO `aiot` VALUES ('GA61514', 'GA61514', '1');
INSERT INTO `aiot` VALUES ('GA61520011', 'GA61520011', '2001');
INSERT INTO `aiot` VALUES ('GA61520012', 'GA61520012', '2001');
INSERT INTO `aiot` VALUES ('GA61520013', 'GA61520013', '2001');
INSERT INTO `aiot` VALUES ('GA61520021', 'GA61520021', '2002');
INSERT INTO `aiot` VALUES ('GA61520022', 'GA61520022', '2002');
INSERT INTO `aiot` VALUES ('GA61520031', 'GA61520031', '2003');
INSERT INTO `aiot` VALUES ('GA61520032', 'GA61520032', '2003');
INSERT INTO `aiot` VALUES ('GA61520033', 'GA61520033', '2003');
INSERT INTO `aiot` VALUES ('GA61520041', 'GA61520041', '2004');
INSERT INTO `aiot` VALUES ('GA61520042', 'GA61520042', '2004');
INSERT INTO `aiot` VALUES ('GA61520043', 'GA61520043', '2004');
INSERT INTO `aiot` VALUES ('GA61520051', 'GA61520051', '2005');
INSERT INTO `aiot` VALUES ('GA61520061', 'GA61520061', '2006');
INSERT INTO `aiot` VALUES ('GA61521', 'GA61521', '2');
INSERT INTO `aiot` VALUES ('GA61530011', 'GA61530011', '3001');
INSERT INTO `aiot` VALUES ('GA61530012', 'GA61530012', '3001');
INSERT INTO `aiot` VALUES ('GA61530013', 'GA61530013', '3001');
INSERT INTO `aiot` VALUES ('GA61530014', 'GA61530014', '3001');
INSERT INTO `aiot` VALUES ('GA61531', 'GA61531', '3');
INSERT INTO `aiot` VALUES ('GA61532', 'GA61532', '3');
INSERT INTO `aiot` VALUES ('GA61540011', 'GA61540011', '4001');
INSERT INTO `aiot` VALUES ('GA61540012', 'GA61540012', '4001');
INSERT INTO `aiot` VALUES ('GA61540021', 'GA61540021', '4002');
INSERT INTO `aiot` VALUES ('GA61540022', 'GA61540022', '4002');
INSERT INTO `aiot` VALUES ('GA61540031', 'GA61540031', '4003');
INSERT INTO `aiot` VALUES ('GA61541', 'GA61541', '4');
INSERT INTO `aiot` VALUES ('GA61550011', 'GA61550011', '5001');
INSERT INTO `aiot` VALUES ('GA61550021', 'GA61550021', '5002');
INSERT INTO `aiot` VALUES ('GA61551', 'GA61551', '5');
INSERT INTO `aiot` VALUES ('GA61552', 'GA61552', '5');
INSERT INTO `aiot` VALUES ('GA61560011', 'GA61560011', '6001');
INSERT INTO `aiot` VALUES ('GA61560012', 'GA61560012', '6001');
INSERT INTO `aiot` VALUES ('GA61560013', 'GA61560013', '6001');
INSERT INTO `aiot` VALUES ('GA61561', 'GA61561', '6');
INSERT INTO `aiot` VALUES ('GA61570011', 'GA61570011', '7001');
INSERT INTO `aiot` VALUES ('GA61570021', 'GA61570021', '7002');
INSERT INTO `aiot` VALUES ('GA61570022', 'GA61570022', '7002');
INSERT INTO `aiot` VALUES ('GA61570023', 'GA61570023', '7002');
INSERT INTO `aiot` VALUES ('GA61571', 'GA61571', '7');
INSERT INTO `aiot` VALUES ('GA61572', 'GA61572', '7');
INSERT INTO `aiot` VALUES ('GA61580011', 'GA61580011', '8001');
INSERT INTO `aiot` VALUES ('GA61580012', 'GA61580012', '8001');
INSERT INTO `aiot` VALUES ('GA61580013', 'GA61580013', '8001');
INSERT INTO `aiot` VALUES ('GA61580014', 'GA61580014', '8001');
INSERT INTO `aiot` VALUES ('GA61581', 'GA61581', '8');
INSERT INTO `aiot` VALUES ('GA61582', 'GA61582', '8');
INSERT INTO `aiot` VALUES ('GA61583', 'GA61583', '8');
INSERT INTO `aiot` VALUES ('GA61590011', 'GA61590011', '9001');
INSERT INTO `aiot` VALUES ('GA61590012', 'GA61590012', '9001');
INSERT INTO `aiot` VALUES ('GA61590021', 'GA61590021', '9002');
INSERT INTO `aiot` VALUES ('GA61590031', 'GA61590031', '9003');
INSERT INTO `aiot` VALUES ('GA61590041', 'GA61590041', '9004');
INSERT INTO `aiot` VALUES ('GA61590042', 'GA61590042', '9004');
INSERT INTO `aiot` VALUES ('GA61590043', 'GA61590043', '9004');
INSERT INTO `aiot` VALUES ('GA61590044', 'GA61590044', '9004');
INSERT INTO `aiot` VALUES ('GA61590051', 'GA61590051', '9005');
INSERT INTO `aiot` VALUES ('GA61591', 'GA61591', '9');
INSERT INTO `aiot` VALUES ('GA61592', 'GA61592', '9');

-- ----------------------------
-- Table structure for edge_list
-- ----------------------------
DROP TABLE IF EXISTS `edge_list`;
CREATE TABLE `edge_list`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of edge_list
-- ----------------------------
INSERT INTO `edge_list` VALUES (1, 'GA61511', '1');
INSERT INTO `edge_list` VALUES (2, 'GA61512', '1');
INSERT INTO `edge_list` VALUES (3, 'GA61513', '1');
INSERT INTO `edge_list` VALUES (4, 'GA61514', '1');
INSERT INTO `edge_list` VALUES (5, 'GA61510011', '1001');
INSERT INTO `edge_list` VALUES (6, 'GA61510021', '1002');
INSERT INTO `edge_list` VALUES (7, 'GA61510031', '1003');
INSERT INTO `edge_list` VALUES (8, 'GA61510032', '1003');
INSERT INTO `edge_list` VALUES (9, 'GA61510033', '1003');
INSERT INTO `edge_list` VALUES (10, 'GA61510041', '1004');
INSERT INTO `edge_list` VALUES (11, 'GA61510042', '1004');
INSERT INTO `edge_list` VALUES (12, 'GA61510051', '1005');
INSERT INTO `edge_list` VALUES (13, 'GA61510061', '1006');
INSERT INTO `edge_list` VALUES (14, 'GA61510071', '1007');
INSERT INTO `edge_list` VALUES (15, 'GA61510081', '1008');
INSERT INTO `edge_list` VALUES (16, 'GA61521', '2');
INSERT INTO `edge_list` VALUES (17, 'GA61520011', '2001');
INSERT INTO `edge_list` VALUES (18, 'GA61520012', '2001');
INSERT INTO `edge_list` VALUES (19, 'GA61520013', '2001');
INSERT INTO `edge_list` VALUES (20, 'GA61520021', '2002');
INSERT INTO `edge_list` VALUES (21, 'GA61520022', '2002');
INSERT INTO `edge_list` VALUES (22, 'GA61520031', '2003');
INSERT INTO `edge_list` VALUES (23, 'GA61520032', '2003');
INSERT INTO `edge_list` VALUES (24, 'GA61520033', '2003');
INSERT INTO `edge_list` VALUES (25, 'GA61520041', '2004');
INSERT INTO `edge_list` VALUES (26, 'GA61520042', '2004');
INSERT INTO `edge_list` VALUES (27, 'GA61520043', '2004');
INSERT INTO `edge_list` VALUES (28, 'GA61520051', '2005');
INSERT INTO `edge_list` VALUES (29, 'GA61520061', '2006');
INSERT INTO `edge_list` VALUES (30, 'GA61531', '3');
INSERT INTO `edge_list` VALUES (31, 'GA61532', '3');
INSERT INTO `edge_list` VALUES (32, 'GA61530011', '3001');
INSERT INTO `edge_list` VALUES (33, 'GA61530012', '3001');
INSERT INTO `edge_list` VALUES (34, 'GA61530013', '3001');
INSERT INTO `edge_list` VALUES (35, 'GA61530014', '3001');
INSERT INTO `edge_list` VALUES (36, 'GA61541', '4');
INSERT INTO `edge_list` VALUES (37, 'GA61540011', '4001');
INSERT INTO `edge_list` VALUES (38, 'GA61540012', '4001');
INSERT INTO `edge_list` VALUES (39, 'GA61540021', '4002');
INSERT INTO `edge_list` VALUES (40, 'GA61540022', '4002');
INSERT INTO `edge_list` VALUES (41, 'GA61540031', '4003');
INSERT INTO `edge_list` VALUES (42, 'GA61551', '5');
INSERT INTO `edge_list` VALUES (43, 'GA61552', '5');
INSERT INTO `edge_list` VALUES (44, 'GA61550011', '5001');
INSERT INTO `edge_list` VALUES (45, 'GA61550021', '5002');
INSERT INTO `edge_list` VALUES (46, 'GA61561', '6');
INSERT INTO `edge_list` VALUES (47, 'GA61560011', '6001');
INSERT INTO `edge_list` VALUES (48, 'GA61560012', '6001');
INSERT INTO `edge_list` VALUES (49, 'GA61560013', '6001');
INSERT INTO `edge_list` VALUES (50, 'GA61571', '7');
INSERT INTO `edge_list` VALUES (51, 'GA61572', '7');
INSERT INTO `edge_list` VALUES (52, 'GA61570011', '7001');
INSERT INTO `edge_list` VALUES (53, 'GA61570021', '7002');
INSERT INTO `edge_list` VALUES (54, 'GA61570022', '7002');
INSERT INTO `edge_list` VALUES (55, 'GA61570023', '7002');
INSERT INTO `edge_list` VALUES (56, 'GA61581', '8');
INSERT INTO `edge_list` VALUES (57, 'GA61582', '8');
INSERT INTO `edge_list` VALUES (58, 'GA61583', '8');
INSERT INTO `edge_list` VALUES (59, 'GA61580011', '8001');
INSERT INTO `edge_list` VALUES (60, 'GA61580012', '8001');
INSERT INTO `edge_list` VALUES (61, 'GA61580013', '8001');
INSERT INTO `edge_list` VALUES (62, 'GA61580014', '8001');
INSERT INTO `edge_list` VALUES (63, 'GA61591', '9');
INSERT INTO `edge_list` VALUES (64, 'GA61592', '9');
INSERT INTO `edge_list` VALUES (65, 'GA61590011', '9001');
INSERT INTO `edge_list` VALUES (66, 'GA61590012', '9001');
INSERT INTO `edge_list` VALUES (67, 'GA61590021', '9002');
INSERT INTO `edge_list` VALUES (68, 'GA61590031', '9003');
INSERT INTO `edge_list` VALUES (69, 'GA61590041', '9004');
INSERT INTO `edge_list` VALUES (70, 'GA61590042', '9004');
INSERT INTO `edge_list` VALUES (71, 'GA61590043', '9004');
INSERT INTO `edge_list` VALUES (72, 'GA61590044', '9004');
INSERT INTO `edge_list` VALUES (73, 'GA61590051', '9005');
INSERT INTO `edge_list` VALUES (74, '1001', '1');
INSERT INTO `edge_list` VALUES (75, '1002', '1');
INSERT INTO `edge_list` VALUES (76, '1003', '1');
INSERT INTO `edge_list` VALUES (77, '1004', '1');
INSERT INTO `edge_list` VALUES (78, '1005', '1');
INSERT INTO `edge_list` VALUES (79, '1006', '1');
INSERT INTO `edge_list` VALUES (80, '1007', '1');
INSERT INTO `edge_list` VALUES (81, '1008', '1');
INSERT INTO `edge_list` VALUES (82, '2001', '2');
INSERT INTO `edge_list` VALUES (83, '2002', '2');
INSERT INTO `edge_list` VALUES (84, '2003', '2');
INSERT INTO `edge_list` VALUES (85, '2004', '2');
INSERT INTO `edge_list` VALUES (86, '2005', '2');
INSERT INTO `edge_list` VALUES (87, '2006', '2');
INSERT INTO `edge_list` VALUES (88, '1', '2');
INSERT INTO `edge_list` VALUES (89, '3001', '3');
INSERT INTO `edge_list` VALUES (90, '2', '3');
INSERT INTO `edge_list` VALUES (91, '4001', '4');
INSERT INTO `edge_list` VALUES (92, '4002', '4');
INSERT INTO `edge_list` VALUES (93, '4003', '4');
INSERT INTO `edge_list` VALUES (94, '3', '4');
INSERT INTO `edge_list` VALUES (95, '5001', '5');
INSERT INTO `edge_list` VALUES (96, '5002', '5');
INSERT INTO `edge_list` VALUES (97, '4', '5');
INSERT INTO `edge_list` VALUES (98, '6001', '6');
INSERT INTO `edge_list` VALUES (99, '5', '6');
INSERT INTO `edge_list` VALUES (100, '7001', '7');
INSERT INTO `edge_list` VALUES (101, '7002', '7');
INSERT INTO `edge_list` VALUES (102, '6', '7');
INSERT INTO `edge_list` VALUES (103, '8001', '8');
INSERT INTO `edge_list` VALUES (104, '7', '8');
INSERT INTO `edge_list` VALUES (105, '9001', '9');
INSERT INTO `edge_list` VALUES (106, '9002', '9');
INSERT INTO `edge_list` VALUES (107, '9003', '9');
INSERT INTO `edge_list` VALUES (108, '9004', '9');
INSERT INTO `edge_list` VALUES (109, '9005', '9');
INSERT INTO `edge_list` VALUES (110, '8', '9');

-- ----------------------------
-- Table structure for node_list
-- ----------------------------
DROP TABLE IF EXISTS `node_list`;
CREATE TABLE `node_list`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bigNodeId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nodeStatus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `symbolSize` int NULL DEFAULT NULL,
  `nodeJson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '节点状态信息Json',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of node_list
-- ----------------------------
INSERT INTO `node_list` VALUES ('1', 'master-node-1', '', '{\"name\":\"异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '异常', 30, '{\"overview\":[80.5,50.1,4,3.5,64,24,8,80.9],\"monitor\":[452,120,521,251,245,266]}');
INSERT INTO `node_list` VALUES ('1001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('1002', 'worker-node-2', '', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('1003', 'worker-node-3', '', '{\"name\":\"异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '异常', 30, '{\"overview\":[10.7,81.7,4,1.5,64,24,8,78],\"monitor\":[786,435,534,546,454,787]}');
INSERT INTO `node_list` VALUES ('1004', 'worker-node-4', '', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('1005', 'worker-node-5', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('1006', 'worker-node-6', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('1007', 'worker-node-7', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('1008', 'worker-node-8', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2', 'master-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2002', 'worker-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2003', 'worker-node-3', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2004', 'worker-node-4', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2005', 'worker-node-5', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('2006', 'worker-node-6', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('3', 'master-node-3', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('3001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('4', 'master-node-4', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('4001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('4002', 'worker-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('4003', 'worker-node-3', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('5', 'master-node-5', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('5001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('5002', 'worker-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('6', 'master-node-6', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('6001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('7', 'master-node-7', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('7001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('7002', 'worker-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('8', 'master-node-8', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('8001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9', 'master-node-9', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9001', 'worker-node-1', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9002', 'worker-node-2', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9003', 'worker-node-3', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9004', 'worker-node-4', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('9005', 'worker-node-5', '', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510011', 'GA61510011', '1001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510021', 'GA61510021', '1002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510031', 'GA61510031', '1003', '{\"name\":\"异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '异常', 30, '{\"overview\":[89.1,85.4,8,4.8,64,24,8,78.5],\"monitor\":[786,302,450,452,246,800]}');
INSERT INTO `node_list` VALUES ('GA61510032', 'GA61510032', '1003', '{\"name\":\"异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '异常', 30, '{\"overview\":[1.5,90.1,8,5.5,64,24,8,80.9],\"monitor\":[220,32,0,657,628,50]}');
INSERT INTO `node_list` VALUES ('GA61510033', 'GA61510033', '1003', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510041', 'GA61510041', '1004', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510042', 'GA61510042', '1004', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510051', 'GA61510051', '1005', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510061', 'GA61510061', '1006', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510071', 'GA61510071', '1007', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61510081', 'GA61510081', '1008', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61511', 'GA61511', '1', '{\"name\":\"异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ff0000\"},{\"offset\":0.7,\"color\":\"#ff0000\"},{\"offset\":1,\"color\":\"#ff000090\"}],\"global\":false}}', '异常', 30, '{\"overview\":[90.4,81.4,8,4,64,24,8,88.5],\"monitor\":[880,32,500,752,456,0]}');
INSERT INTO `node_list` VALUES ('GA61512', 'GA61512', '1', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61513', 'GA61513', '1', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61514', 'GA61514', '1', '{\"name\":\"疑似异常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#ffba0c\"},{\"offset\":0.7,\"color\":\"#ffba0c\"},{\"offset\":1,\"color\":\"#ffba0c90\"}],\"global\":false}}', '疑似异常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520011', 'GA61520011', '2001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520012', 'GA61520012', '2001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520013', 'GA61520013', '2001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520021', 'GA61520021', '2002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520022', 'GA61520022', '2002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520031', 'GA61520031', '2003', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520032', 'GA61520032', '2003', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520033', 'GA61520033', '2003', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520041', 'GA61520041', '2004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520042', 'GA61520042', '2004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520043', 'GA61520043', '2004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520051', 'GA61520051', '2005', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61520061', 'GA61520061', '2006', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61521', 'GA61521', '2', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61530011', 'GA61530011', '3001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61530012', 'GA61530012', '3001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61530013', 'GA61530013', '3001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61530014', 'GA61530014', '3001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61531', 'GA61531', '3', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61532', 'GA61532', '3', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61540011', 'GA61540011', '4001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61540012', 'GA61540012', '4001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61540021', 'GA61540021', '4002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61540022', 'GA61540022', '4002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61540031', 'GA61540031', '4003', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61541', 'GA61541', '4', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61550011', 'GA61550011', '5001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61550021', 'GA61550021', '5002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61551', 'GA61551', '5', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61552', 'GA61552', '5', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61560011', 'GA61560011', '6001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61560012', 'GA61560012', '6001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61560013', 'GA61560013', '6001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61561', 'GA61561', '6', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61570011', 'GA61570011', '7001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61570021', 'GA61570021', '7002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61570022', 'GA61570022', '7002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61570023', 'GA61570023', '7002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61571', 'GA61571', '7', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61572', 'GA61572', '7', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61580011', 'GA61580011', '8001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61580012', 'GA61580012', '8001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61580013', 'GA61580013', '8001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61580014', 'GA61580014', '8001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61581', 'GA61581', '8', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61582', 'GA61582', '8', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61583', 'GA61583', '8', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590011', 'GA61590011', '9001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590012', 'GA61590012', '9001', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590021', 'GA61590021', '9002', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590031', 'GA61590031', '9003', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590041', 'GA61590041', '9004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590042', 'GA61590042', '9004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590043', 'GA61590043', '9004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590044', 'GA61590044', '9004', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61590051', 'GA61590051', '9005', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61591', 'GA61591', '9', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);
INSERT INTO `node_list` VALUES ('GA61592', 'GA61592', '9', '{\"name\":\"正常\",\"color\":{\"type\":\"radial\",\"x\":0.5,\"y\":0.5,\"r\":0.5,\"colorStops\":[{\"offset\":0,\"color\":\"#3dd67a\"},{\"offset\":0.7,\"color\":\"#3dd67a\"},{\"offset\":1,\"color\":\"#95dcb2\"}],\"global\":false}}', '正常', 30, NULL);

-- ----------------------------
-- Table structure for node_network_flow
-- ----------------------------
DROP TABLE IF EXISTS `node_network_flow`;
CREATE TABLE `node_network_flow`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `inData` int NULL DEFAULT NULL,
  `outData` int NULL DEFAULT NULL,
  `createTime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of node_network_flow
-- ----------------------------
INSERT INTO `node_network_flow` VALUES (101, 319, 500, '21:16:43');
INSERT INTO `node_network_flow` VALUES (102, 374, 100, '21:16:42');
INSERT INTO `node_network_flow` VALUES (103, 287, 273, '21:16:41');
INSERT INTO `node_network_flow` VALUES (104, 500, 31, '21:16:40');
INSERT INTO `node_network_flow` VALUES (105, 194, 94, '21:16:39');
INSERT INTO `node_network_flow` VALUES (106, 403, 339, '21:16:38');
INSERT INTO `node_network_flow` VALUES (107, 154, 412, '21:16:37');
INSERT INTO `node_network_flow` VALUES (108, 391, 689, '21:16:36');
INSERT INTO `node_network_flow` VALUES (109, 128, 700, '21:16:35');
INSERT INTO `node_network_flow` VALUES (110, 229, 517, '21:16:34');
INSERT INTO `node_network_flow` VALUES (111, 160, 306, '21:16:33');
INSERT INTO `node_network_flow` VALUES (112, 158, 793, '21:16:32');
INSERT INTO `node_network_flow` VALUES (113, 235, 762, '21:16:31');
INSERT INTO `node_network_flow` VALUES (114, 82, 483, '21:16:30');
INSERT INTO `node_network_flow` VALUES (115, 216, 364, '21:16:29');
INSERT INTO `node_network_flow` VALUES (116, 125, 373, '21:16:28');
INSERT INTO `node_network_flow` VALUES (117, 475, 195, '21:16:27');
INSERT INTO `node_network_flow` VALUES (118, 437, 142, '21:16:26');
INSERT INTO `node_network_flow` VALUES (119, 166, 106, '21:16:25');
INSERT INTO `node_network_flow` VALUES (120, 166, 11, '21:16:24');
INSERT INTO `node_network_flow` VALUES (121, 361, 606, '21:16:23');
INSERT INTO `node_network_flow` VALUES (122, 377, 697, '21:16:22');
INSERT INTO `node_network_flow` VALUES (123, 288, 216, '21:16:21');
INSERT INTO `node_network_flow` VALUES (124, 112, 670, '21:16:20');
INSERT INTO `node_network_flow` VALUES (125, 241, 155, '21:16:19');
INSERT INTO `node_network_flow` VALUES (126, 313, 431, '21:16:18');
INSERT INTO `node_network_flow` VALUES (127, 218, 772, '21:16:17');
INSERT INTO `node_network_flow` VALUES (128, 223, 526, '21:16:16');
INSERT INTO `node_network_flow` VALUES (129, 294, 655, '21:16:15');
INSERT INTO `node_network_flow` VALUES (130, 108, 38, '21:16:14');
INSERT INTO `node_network_flow` VALUES (131, 268, 535, '21:16:13');
INSERT INTO `node_network_flow` VALUES (132, 416, 475, '21:16:12');
INSERT INTO `node_network_flow` VALUES (133, 141, 76, '21:16:11');
INSERT INTO `node_network_flow` VALUES (134, 462, 354, '21:16:10');
INSERT INTO `node_network_flow` VALUES (135, 367, 573, '21:16:09');
INSERT INTO `node_network_flow` VALUES (136, 268, 125, '21:16:08');
INSERT INTO `node_network_flow` VALUES (137, 496, 676, '21:16:07');
INSERT INTO `node_network_flow` VALUES (138, 177, 769, '21:16:06');
INSERT INTO `node_network_flow` VALUES (139, 430, 354, '21:16:05');
INSERT INTO `node_network_flow` VALUES (140, 216, 207, '21:16:04');
INSERT INTO `node_network_flow` VALUES (141, 422, 620, '21:16:03');
INSERT INTO `node_network_flow` VALUES (142, 143, 710, '21:16:02');
INSERT INTO `node_network_flow` VALUES (143, 103, 635, '21:16:01');
INSERT INTO `node_network_flow` VALUES (144, 212, 605, '21:16:00');
INSERT INTO `node_network_flow` VALUES (145, 431, 316, '21:15:59');
INSERT INTO `node_network_flow` VALUES (146, 456, 287, '21:15:58');
INSERT INTO `node_network_flow` VALUES (147, 293, 373, '21:15:57');
INSERT INTO `node_network_flow` VALUES (148, 476, 207, '21:15:56');
INSERT INTO `node_network_flow` VALUES (149, 374, 325, '21:15:55');
INSERT INTO `node_network_flow` VALUES (150, 155, 746, '21:15:54');
INSERT INTO `node_network_flow` VALUES (151, 60, 178, '21:15:53');
INSERT INTO `node_network_flow` VALUES (152, 248, 501, '21:15:52');
INSERT INTO `node_network_flow` VALUES (153, 202, 745, '21:15:51');
INSERT INTO `node_network_flow` VALUES (154, 446, 504, '21:15:50');
INSERT INTO `node_network_flow` VALUES (155, 200, 567, '21:15:49');
INSERT INTO `node_network_flow` VALUES (156, 185, 452, '21:15:48');
INSERT INTO `node_network_flow` VALUES (157, 402, 753, '21:15:47');
INSERT INTO `node_network_flow` VALUES (158, 292, 128, '21:15:46');
INSERT INTO `node_network_flow` VALUES (159, 461, 233, '21:15:45');
INSERT INTO `node_network_flow` VALUES (160, 232, 20, '21:15:44');
INSERT INTO `node_network_flow` VALUES (161, 440, 65, '21:15:43');
INSERT INTO `node_network_flow` VALUES (162, 192, 147, '21:15:42');
INSERT INTO `node_network_flow` VALUES (163, 368, 182, '21:15:41');
INSERT INTO `node_network_flow` VALUES (164, 464, 352, '21:15:40');
INSERT INTO `node_network_flow` VALUES (165, 362, 285, '21:15:39');
INSERT INTO `node_network_flow` VALUES (166, 156, 205, '21:15:38');
INSERT INTO `node_network_flow` VALUES (167, 321, 137, '21:15:37');
INSERT INTO `node_network_flow` VALUES (168, 255, 609, '21:15:36');
INSERT INTO `node_network_flow` VALUES (169, 250, 123, '21:15:35');
INSERT INTO `node_network_flow` VALUES (170, 171, 38, '21:15:34');
INSERT INTO `node_network_flow` VALUES (171, 271, 311, '21:15:33');
INSERT INTO `node_network_flow` VALUES (172, 413, 486, '21:15:32');
INSERT INTO `node_network_flow` VALUES (173, 476, 383, '21:15:31');
INSERT INTO `node_network_flow` VALUES (174, 171, 759, '21:15:30');
INSERT INTO `node_network_flow` VALUES (175, 301, 53, '21:15:29');
INSERT INTO `node_network_flow` VALUES (176, 424, 300, '21:15:28');
INSERT INTO `node_network_flow` VALUES (177, 408, 299, '21:15:27');
INSERT INTO `node_network_flow` VALUES (178, 83, 799, '21:15:26');
INSERT INTO `node_network_flow` VALUES (179, 316, 268, '21:15:25');
INSERT INTO `node_network_flow` VALUES (180, 227, 410, '21:15:24');
INSERT INTO `node_network_flow` VALUES (181, 213, 615, '21:15:23');
INSERT INTO `node_network_flow` VALUES (182, 211, 271, '21:15:22');
INSERT INTO `node_network_flow` VALUES (183, 212, 392, '21:15:21');
INSERT INTO `node_network_flow` VALUES (184, 298, 669, '21:15:20');
INSERT INTO `node_network_flow` VALUES (185, 101, 461, '21:15:19');
INSERT INTO `node_network_flow` VALUES (186, 175, 585, '21:15:18');
INSERT INTO `node_network_flow` VALUES (187, 271, 642, '21:15:17');
INSERT INTO `node_network_flow` VALUES (188, 472, 737, '21:15:16');
INSERT INTO `node_network_flow` VALUES (189, 177, 135, '21:15:15');
INSERT INTO `node_network_flow` VALUES (190, 223, 726, '21:15:14');
INSERT INTO `node_network_flow` VALUES (191, 270, 513, '21:15:13');
INSERT INTO `node_network_flow` VALUES (192, 455, 305, '21:15:12');
INSERT INTO `node_network_flow` VALUES (193, 474, 94, '21:15:11');
INSERT INTO `node_network_flow` VALUES (194, 493, 707, '21:15:10');
INSERT INTO `node_network_flow` VALUES (195, 365, 464, '21:15:09');
INSERT INTO `node_network_flow` VALUES (196, 411, 277, '21:15:08');
INSERT INTO `node_network_flow` VALUES (197, 395, 208, '21:15:07');
INSERT INTO `node_network_flow` VALUES (198, 411, 671, '21:15:06');
INSERT INTO `node_network_flow` VALUES (199, 252, 619, '21:15:05');
INSERT INTO `node_network_flow` VALUES (200, 90, 173, '21:15:04');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `groupName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES (1, '微信', '0', 'notify');
INSERT INTO `status` VALUES (2, '邮箱', '1', 'notify');
INSERT INTO `status` VALUES (3, '短信', '1', 'notify');

-- ----------------------------
-- Table structure for warning_trends
-- ----------------------------
DROP TABLE IF EXISTS `warning_trends`;
CREATE TABLE `warning_trends`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `projectNum` int NULL DEFAULT NULL,
  `ANum` int NULL DEFAULT NULL,
  `BNum` int NULL DEFAULT NULL,
  `CNum` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warning_trends
-- ----------------------------
INSERT INTO `warning_trends` VALUES (1, '2023-08', 3, 0, 0, 3);
INSERT INTO `warning_trends` VALUES (2, '2023-09', 1, 0, 0, 1);
INSERT INTO `warning_trends` VALUES (3, '2023-10', 1, 0, 0, 1);
INSERT INTO `warning_trends` VALUES (4, '2023-11', 3, 0, 0, 3);
INSERT INTO `warning_trends` VALUES (5, '2023-12', 2, 0, 0, 2);
INSERT INTO `warning_trends` VALUES (6, '2024-01', 2, 0, 0, 2);

SET FOREIGN_KEY_CHECKS = 1;
