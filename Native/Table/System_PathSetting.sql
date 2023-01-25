/*****************************************************
System_PathSetting                程序框架路径设置
******************************************************/

drop table if exists System_PathSetting;

CREATE TABLE System_PathSetting 
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

INSERT INTO System_PathSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPKA6WE841SE31MQWH3Y5WNF','ApplictionCatalogue','程序运行目录',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_PathSetting WHERE Code='01GPKA6WE841SE31MQWH3Y5WNF');

INSERT INTO System_PathSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPKA6WE85VSFC0S16CF7MCBJ','NativeDataBaseFilePath','本地数据库文件路径',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_PathSetting WHERE Code='01GPKA6WE85VSFC0S16CF7MCBJ');

INSERT INTO System_PathSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPSK8EY3VD74Y0508D7KP2Z4','LogFileCatalogue','日志文件目录',3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_PathSetting WHERE Code='01GPSK8EY3VD74Y0508D7KP2Z4');
