/*****************************************************
System_DataBaseSetting       程序数据库设置
******************************************************/

drop table if exists System_DataBaseSetting;

CREATE TABLE System_DataBaseSetting 
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

INSERT INTO System_DataBaseSetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQ4CXY72MR4SKSJG7664B1HS','Native','本地配置数据库',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GQ4CXY72MR4SKSJG7664B1HS');

INSERT INTO System_DataBaseSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQ4CXY72MZ7GZAFR9MSE99AW','BAGLDB','病案管理数据库',
    'ygXZxSoEX3Yqbt9Xpc0g7hiXEdo89jh9Y9RDJmDg24IfByrC59Zdd68jL6wjBYsQVc6SqYQzgNDK34K7tf7paNorh456wZSyFGlba5cvfXqI6FdFdB0ff1KcT4pxnevt/I9/8gH2qY5bdtM3EcmuJQ==',
        2,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GQ4CXY72MZ7GZAFR9MSE99AW');

INSERT INTO System_DataBaseSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GYW88JAYT60MZHSZT4G25Q1B','MZCISDB','临床管理数据库(门诊)',
    'ygXZxSoEX3Yqbt9Xpc0g7kTIdBAKmtJKcT9jpi7H+8BJg2cPiq1pjJl6EbuzODntsfejwB8609vQA1V+JbTe3AYbQTJ+Eg/uBN4CTuuzH4hqpxiGvJ09B5RegpOVN2j6',
        3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GYW88JAYT60MZHSZT4G25Q1B');

INSERT INTO System_DataBaseSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ8C9VQ9FDQHAV5AB39DGTF7','ZYCISDB','临床管理数据库(住院)',
    'ygXZxSoEX3Yqbt9Xpc0g7kTIdBAKmtJKcT9jpi7H+8BJg2cPiq1pjJl6EbuzODnt3Mi9INtVD0xQkdRD2bo/iyzBfYDOPlnyayQTs3t/6A1vrWsTM1tfLvb9LJXqVZoE9eBCnaTSpnf9Tlw+ycttvA==',
        4,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_DataBaseSetting WHERE Code='01GZ8C9VQ9FDQHAV5AB39DGTF7');