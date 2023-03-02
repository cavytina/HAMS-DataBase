/*****************************************************
HQMS_DictionaryCategorySetting     绩效考核基础数据类别设置
******************************************************/

drop table if exists HQMS_DictionaryCategorySetting;

CREATE TABLE HQMS_DictionaryCategorySetting 
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

INSERT INTO HQMS_DictionaryCategorySetting (Code,Item,Name,Rank,DefaultFlag,EnabledFlag)
SELECT '01GT3M1KGWN67V9ARD839D7ZSF','MenuSetting','菜单设置',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionaryCategorySetting WHERE Code='01GT3M1KGWN67V9ARD839D7ZSF');
