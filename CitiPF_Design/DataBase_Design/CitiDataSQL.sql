
CREATE DATABASE IF NOT EXISTS CITI default charset utf8;

USE CITI;
/**
 * CITI_RATEDATA
 * RD_ID 表字段ID 主键
 * RD_CODE 数据来源码
 * RD_STOCKINDEX 股票指数
 * RD_STOCKDATE 股指发布时间
 */
CREATE TABLE CITI_RateData(
	RD_ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
	RD_STOCKINDEX DOUBLE NOT NULL,
	RD_STOCKDATE DATETIME NOT NULL,
	PRIMARY KEY(RD_ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
--测试SQL语句
insert into CITI_RateData value(null,'01',1.01,now());
/**
 * 查询后50条数据
 */
select * from CITI_RATEDATA order by RD_STOCKDATE desc limit 50;