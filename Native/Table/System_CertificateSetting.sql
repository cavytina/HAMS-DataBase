/*****************************************************
System_CertificateSetting      程序证书设置
******************************************************/

drop table if exists System_CertificateSetting;

CREATE TABLE System_CertificateSetting 
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

INSERT INTO System_CertificateSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQQA8CFNQA9KKY6E5RNZY350','Standard','标准版','EC5BF9BE1A6292313A56E6A4E48DBB48',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_CertificateSetting WHERE Code='01GQQA8CFNQA9KKY6E5RNZY350');
