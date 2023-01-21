/*****************************************************
System_LogSetting                程序框架日志设置
******************************************************/

drop table if exists System_LogSetting;

CREATE TABLE System_LogSetting 
(
    Code VARCHAR primary key,                --代码
    Item VARCHAR NOT NULL,                   --英文名称
    Name VARCHAR NOT NULL,                   --中文名称
    Content VARCHAR DEFAULT '',              --日志路径
    Description VARCHAR DEFAULT '',          --
    Note VARCHAR DEFAULT '',                 --日志级别
    Rank INT NOT NULL,                       --排序
    Flag BOOLEAN NOT NULL                    --是否启用
);

INSERT INTO System_LogSetting (Code,Item,Name,Note,Rank,Flag)
SELECT '01GPT3T83953EVANVTJ0ATFAK5','Global','全局设置','Debug',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T83953EVANVTJ0ATFAK5');

INSERT INTO System_LogSetting (Code,Item,Name,Note,Rank,Flag)
SELECT '01GPT3T839Q7VP6GAGQT12PBXK','Error','错误日志','Error',2,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839Q7VP6GAGQT12PBXK');

INSERT INTO System_LogSetting (Code,Item,Name,Note,Rank,Flag)
SELECT '01GPT3T839BDKG6EA03W22MX0K','DataBase','数据库日志','Debug',3,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839BDKG6EA03W22MX0K');

INSERT INTO System_LogSetting (Code,Item,Name,Note,Rank,Flag)
SELECT '01GPT3T839QKWK6A7GHVV2PH8E','ServicEvent','服务事件日志','Debug',4,True
WHERE NOT EXISTS (SELECT 1 FROM System_LogSetting WHERE Code='01GPT3T839QKWK6A7GHVV2PH8E');