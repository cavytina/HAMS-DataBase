/*****************************************************
System_SeveritySetting          程序验证结果严重级别设置
******************************************************/

drop table if exists System_SeveritySetting;

CREATE TABLE System_SeveritySetting 
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

INSERT INTO System_SeveritySetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQCT5JMSEWPN94XQHF0SWCRH','Info','提示',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_SeveritySetting WHERE Code='01GQCT5JMSEWPN94XQHF0SWCRH');

INSERT INTO System_SeveritySetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQCT5JMSH8Z6R8ES8H9DSJ52','Error','错误',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_SeveritySetting WHERE Code='01GQCT5JMSH8Z6R8ES8H9DSJ52');
