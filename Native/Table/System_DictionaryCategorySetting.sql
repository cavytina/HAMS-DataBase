/*****************************************************
System_DictionaryCategorySetting     程序配置项设置
******************************************************/

drop table if exists System_DictionaryCategorySetting;

CREATE TABLE System_DictionaryCategorySetting 
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

INSERT INTO System_DictionaryCategorySetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ5QN77XYF46FCP1H2KV5M0M','VisitCategory','就诊类别',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_DictionaryCategorySetting WHERE Code='01GZ5QN77XYF46FCP1H2KV5M0M');
