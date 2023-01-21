/*****************************************************
System_DataBaseSetting       程序数据库设置
******************************************************/

drop table if exists System_DataBaseSetting;

CREATE TABLE System_DataBaseSetting 
(
    Code VARCHAR primary key,                --代码
    Item VARCHAR NOT NULL,                   --英文名称
    Name VARCHAR NOT NULL,                   --中文名称
    Content VARCHAR DEFAULT '',              --连接字符串
    Description VARCHAR DEFAULT '',          --
    Note VARCHAR DEFAULT '',                 --
    Rank INT NOT NULL,                       --排序
    Flag BOOLEAN NOT NULL                    --是否默认设置
);

INSERT INTO System_DataBaseSetting (Code,Item,Name,Rank,Flag)
SELECT '01GQ4CXY72MR4SKSJG7664B1HS','Native','本地配置数据库',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GQ4CXY72MR4SKSJG7664B1HS');

INSERT INTO System_DataBaseSetting (Code,Item,Name,Rank,Flag)
SELECT '01GQ4CXY72MZ7GZAFR9MSE99AW','BAGLDB','病案管理数据库',2,False
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GQ4CXY72MZ7GZAFR9MSE99AW');
