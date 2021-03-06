CREATE TABLE `SCHEDULE_JOB` (
  `ID_` bigint(20) NOT NULL COMMENT '任务ID',
  `NAME_` varchar(50) NOT NULL COMMENT '任务名称',
  `GROUP_` varchar(50) NOT NULL COMMENT '任务分组',
  `STATUS_` tinyint(2) NOT NULL COMMENT '任务状态(1:启动,0关闭)',
  `CRON_` varchar(100) NOT NULL COMMENT 'cron表达式',
  `DESCRIPTION_` varchar(500) DEFAULT NULL COMMENT '描述',
  `IS_CONCURRENT_` tinyint(2) NOT NULL COMMENT '任务是否可并发执行(0:可以,1:不可)',
  `BEAN_CLASS_` varchar(1024) NOT NULL COMMENT '任务执行时调用哪个类(全类名)',
  `BEAN_NAME_` varchar(100) NOT NULL COMMENT 'bean名称',
  `METHOD_NAME_` varchar(100) NOT NULL COMMENT '任务调用的方法名',
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `CREATE_USER_` varchar(50) NOT NULL COMMENT '创建人',
  `MODIFY_USER_` varchar(50) NOT NULL COMMENT '修改人',
  `VERSION_` bigint(20) NOT NULL COMMENT '版本',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;