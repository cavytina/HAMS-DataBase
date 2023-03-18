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

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTRBPJ9EVCTQFRYN526D77FB','2021','2021','01GTN95ZFWMSK11T1YWYMEGS9Z','YearSetting',4,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTRBPJ9EVCTQFRYN526D77FB');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTRBPJ9E1S3KEXK8AGW44P71','2022','2022','01GTN95ZFWMSK11T1YWYMEGS9Z','YearSetting',5,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTRBPJ9E1S3KEXK8AGW44P71');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTRBPJ9EGFJ5201KS5QHWVHC','2023','2023','01GTN95ZFWMSK11T1YWYMEGS9Z','YearSetting',6,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTRBPJ9EGFJ5201KS5QHWVHC');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNE9FF0AR2DGX1PKHMA3NEG','2024','2024','01GTN95ZFWMSK11T1YWYMEGS9Z','YearSetting',7,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNE9FF0AR2DGX1PKHMA3NEG');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNFVSW2FZSX8DQD6RR5BRJN','January','一月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',8,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNFVSW2FZSX8DQD6RR5BRJN');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNFVSW2W12ADBWFDWGAJAWJ','February','二月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',9,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNFVSW2W12ADBWFDWGAJAWJ');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNFVSW2PNV7QNF29YS6TGT1','March','三月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',10,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNFVSW2PNV7QNF29YS6TGT1');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNFVSW2445YVJT14NNNBD9M','April','四月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',11,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNFVSW2445YVJT14NNNBD9M');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNFVSW2YNNETN0RSR10AMCD','May','五月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',12,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNFVSW2YNNETN0RSR10AMCD');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG4X6WRDQDRM00QK6B21MW','June','六月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',13,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG4X6WRDQDRM00QK6B21MW');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG4X6W6DJBSVDMPAT5RTEC','July','七月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',14,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG4X6W6DJBSVDMPAT5RTEC');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG4X6WMPWGTXZY82KREPFC','August','八月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',15,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG4X6WMPWGTXZY82KREPFC');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG4X6WHTMXS6AD72P7T0A2','September','九月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',16,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG4X6WHTMXS6AD72P7T0A2');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG4X6WCWHGPRDDH9462HC2','October','十月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',17,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG4X6WCWHGPRDDH9462HC2');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG9KBTJX7VFRJF9A27887T','November','十一月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',18,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG9KBTJX7VFRJF9A27887T');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GTNG9KBTJ794RE7HTVS8MKQ7','December','十二月','01GTNFQDADBJCMK9Q8V1ZK8R0M','MonthSetting',19,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GTNG9KBTJ794RE7HTVS8MKQ7');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,Content,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GVGA3FQNHBTC5HWAYHGCVT45','HospitalCode','医院代码','01','01GVGA3FQM9M5H3ZRP14H3ZJSX','CustomSetting',20,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GVGA3FQNHBTC5HWAYHGCVT45');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GVGA3FQNBZ9YZ9R2PVEBXZKC','ExportFileCatalogue','导出文件目录','01GVGA3FQM9M5H3ZRP14H3ZJSX','CustomSetting',21,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GVGA3FQNBZ9YZ9R2PVEBXZKC');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GVGA3FQN1W8600ZFKR4K74MY','UpLoadFileCatalogue','上传文件目录','01GVGA3FQM9M5H3ZRP14H3ZJSX','CustomSetting',22,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GVGA3FQN1W8600ZFKR4K74MY');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GVGA3FQNHVVFEM8KQ6FDCYFS','MasterExportFileCatalogue','汇总文件导出目录','01GVGA3FQM9M5H3ZRP14H3ZJSX','CustomSetting',23,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GVGA3FQNHVVFEM8KQ6FDCYFS');

INSERT INTO HQMS_DictionarySetting (Code,Item,Name,CategoryCode,CategoryItem,Rank,DefaultFlag,EnabledFlag)
SELECT '01GVGAG8VD3GYZMXG1MQZ2YW1T','DetailExportFileCatalogue','明细文件导出目录','01GVGA3FQM9M5H3ZRP14H3ZJSX','CustomSetting',24,True,True
WHERE NOT EXISTS (SELECT 1 FROM HQMS_DictionarySetting WHERE Code='01GVGAG8VD3GYZMXG1MQZ2YW1T');