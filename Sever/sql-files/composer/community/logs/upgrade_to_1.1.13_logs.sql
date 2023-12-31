-- ------------------------------------------------------------------------------
-- 此脚本用于将 Pandas 的日志数据库升级到 1.1.13 版本
-- 注意: 若存在更低版本且从未导入的升级脚本, 请按版本号从小到大依序导入
-- ------------------------------------------------------------------------------

-- -----------------------------------------------
-- upgrade_20220607_logs.sql
-- -----------------------------------------------

ALTER TABLE `picklog`
	MODIFY `type` enum('M','P','L','T','V','S','N','C','A','R','G','E','B','O','I','X','D','U','$','F','Y','Z','Q','H','J','W','0','1','2') NOT NULL default 'P'
;

ALTER TABLE `zenylog`
	MODIFY `type` enum('T','V','P','M','S','N','D','C','A','E','I','B','K','J','X','0','2') NOT NULL default 'S'
;
