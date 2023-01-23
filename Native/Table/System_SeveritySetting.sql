/*****************************************************
System_SeveritySetting          程序验证结果严重级别设置
******************************************************/

drop table if exists System_SeveritySetting;

CREATE TABLE System_SeveritySetting 
(
    Code VARCHAR primary key,                --代码
    Item VARCHAR NOT NULL,                   --英文名称
    Name VARCHAR NOT NULL,                   --中文名称
    Content VARCHAR DEFAULT '',              --
    Description VARCHAR DEFAULT '',          --
    Note VARCHAR DEFAULT '',                 --
    Rank INT NOT NULL,                       --排序
    Flag BOOLEAN NOT NULL                    --是否默认设置
);

INSERT INTO System_SeveritySetting (Code,Item,Name,Rank,Flag)
SELECT '01GQCT5JMSEWPN94XQHF0SWCRH','Info','提示',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_SeveritySetting WHERE Code='01GQCT5JMSEWPN94XQHF0SWCRH');

INSERT INTO System_SeveritySetting (Code,Item,Name,Rank,Flag)
SELECT '01GQCT5JMSH8Z6R8ES8H9DSJ52','Error','错误',2,True
WHERE NOT EXISTS (SELECT 1 FROM System_SeveritySetting WHERE Code='01GQCT5JMSH8Z6R8ES8H9DSJ52');
