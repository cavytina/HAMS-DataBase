/*****************************************************
HQMS_DictionarySetting     绩效考核基础数据设置
******************************************************/

drop table if exists HQMS_DictionarySetting;

CREATE TABLE HQMS_DictionarySetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --路径信息
    CategoryCode CHAR(24)      NOT NULL,             --类别代码
    CategoryItem VARCHAR(100)  NOT NULL,             --类别名称
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GT3MKRMZYZJT4XKKQDYEWMXS','DataMapping','数据匹配','01GT3M1KGWN67V9ARD839D7ZSF','MenuSetting',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GT3MKRMZYZJT4XKKQDYEWMXS');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GT3MKRMZ31SJ2JJ4FWDTWE5W','DataQuerying','数据查询','01GT3M1KGWN67V9ARD839D7ZSF','MenuSetting',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GT3MKRMZ31SJ2JJ4FWDTWE5W');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GT3MKRMZWTXWJTS14R2ED50K','DataExporting','数据导出','01GT3M1KGWN67V9ARD839D7ZSF','MenuSetting',3,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GT3MKRMZWTXWJTS14R2ED50K');
