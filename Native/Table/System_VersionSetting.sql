/*****************************************************
System_VersionSetting                程序版本设置
******************************************************/

drop table if exists System_VersionSetting;

CREATE TABLE System_VersionSetting 
(
    Code VARCHAR primary key,      --代码
    Name VARCHAR,                  --英文名称
    ReferName VARCHAR,             --中文名称
    Content VARCHAR,               --设置值
    Description VARCHAR,           --描述
    Rank INT,                      --排序
    Flag BOOLEAN                   --是否启用
);

INSERT INTO System_VersionSetting (Code,Name,ReferName,Content,Description,Rank,Flag)
SELECT '01GP83YVRCNNV5CJB9EJR8F33C','VersionNumber','版本号','23.01','',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Name='VersionNumber');

INSERT INTO System_VersionSetting (Code,Name,ReferName,Content,Description,Rank,Flag)
SELECT '01GP83YVRCKRZFXXBJTFEZ634Y','VersionCode','当前版本','Standard','',2,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Name='VersionCode');

INSERT INTO System_VersionSetting (Code,Name,ReferName,Content,Description,Rank,Flag)
SELECT '01GP83YVRC9M90BNVJBAAQDAFP','OpenSourceAddress','开源地址','https://github.com/cavytina/HAMS','',3,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Name='OpenSourceAddress');

INSERT INTO System_VersionSetting (Code,Name,ReferName,Content,Description,Rank,Flag)
SELECT '01GP83YVRCGR79139Y8FSHBRX7','OpenSourceProtocol','开源协议','MIT','',4,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Name='OpenSourceProtocol');

INSERT INTO System_VersionSetting (Code,Name,ReferName,Content,Description,Rank,Flag)
SELECT '01GP83YVRCWT212M2RCV9XZEQB','Email','邮箱','cavy1010@163.com','',5,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Name='Email');

SELECT * from System_VersionSetting ORDER BY Rank;