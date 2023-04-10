/*****************************************************
System_ThemeSetting                程序框架主题设置
******************************************************/

DROP TABLE IF EXISTS System_ThemeSetting;

CREATE TABLE System_ThemeSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --内容
    BaseTheme VARCHAR(50)      DEFAULT '',           --明暗模式
    PrimaryColor VARCHAR(50)   DEFAULT '',           --主要色  
    SecondaryColor VARCHAR(50) DEFAULT '',           --次要色
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_ThemeSetting (Code,Item,Name,BaseTheme,PrimaryColor,SecondaryColor,Rank,DefaultFlag,EnabledFlag)
SELECT '01GX8353SEH9NXXND2KZWMYB79','BaseTheme','基础主题','Dark','Blue','Red',1,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_ThemeSetting WHERE Code='01GX8353SEH9NXXND2KZWMYB79');
