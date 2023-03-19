/*****************************************************
System_LogSetting                程序框架日志设置
******************************************************/

drop table if exists System_LogSetting;

CREATE TABLE System_LogSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --路径信息
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_LogSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPT3T83953EVANVTJ0ATFAK5','Global','全局设置','Debug',1,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T83953EVANVTJ0ATFAK5');

INSERT INTO System_LogSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPT3T839Q7VP6GAGQT12PBXK','Application','程序运行日志',2,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839Q7VP6GAGQT12PBXK');

INSERT INTO System_LogSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPT3T839BDKG6EA03W22MX0K','DataBase','数据库日志',3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839BDKG6EA03W22MX0K');

INSERT INTO System_LogSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPT3T839QKWK6A7GHVV2PH8E','ServicEvent','服务事件日志',4,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839QKWK6A7GHVV2PH8E');