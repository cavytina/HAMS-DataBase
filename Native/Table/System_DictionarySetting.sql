/*****************************************************
System_DictionarySetting     程序基础数据设置
******************************************************/

drop table if exists System_DictionarySetting;

CREATE TABLE System_DictionarySetting 
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

INSERT INTO System_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ5QN77XDNJZA1T8VJH6TK5Y','OutPatient','门诊','01GZ5QN77XYF46FCP1H2KV5M0M','VisitCategory',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_DictionarySetting WHERE Code='System_DictionarySetting');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GZ5QN77X8RWAY4WM9Y01FPBJ','InHospital','住院','01GZ5QN77XYF46FCP1H2KV5M0M','VisitCategory',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_DictionarySetting WHERE Code='01GZ5QN77X8RWAY4WM9Y01FPBJ');