/*****************************************************
System_PathSetting                程序框架路径设置
******************************************************/

drop table if exists System_PathSetting;

CREATE TABLE System_PathSetting 
(
    Code VARCHAR primary key,                --代码
    Item VARCHAR NOT NULL,                   --英文名称
    Name VARCHAR NOT NULL,                   --中文名称
    Content VARCHAR DEFAULT '',              --路径
    Description VARCHAR DEFAULT '',          --
    Note VARCHAR DEFAULT '',                 --
    Rank INT NOT NULL,                       --排序
    Flag BOOLEAN NOT NULL                    --是否启用
);

INSERT INTO System_PathSetting (Code,Item,Name,Rank,Flag)
SELECT '01GPKA6WE841SE31MQWH3Y5WNF','ApplictionCatalogue','程序运行目录',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_PathSetting WHERE Code='01GPKA6WE841SE31MQWH3Y5WNF');

INSERT INTO System_PathSetting (Code,Item,Name,Rank,Flag)
SELECT '01GPKA6WE85VSFC0S16CF7MCBJ','NativeDataBaseFilePath','本地数据库文件路径',2,True
WHERE NOT EXISTS (SELECT 1 FROM System_PathSetting WHERE Code='01GPKA6WE85VSFC0S16CF7MCBJ');
