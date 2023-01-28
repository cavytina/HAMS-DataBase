/*****************************************************
System_EnvironmentSetting    程序框架环境设置
******************************************************/

drop table if exists System_EnvironmentSetting;

CREATE TABLE System_EnvironmentSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --英文名称
    Name VARCHAR(100)          NOT NULL,             --中文名称
    Content VARCHAR(500)       DEFAULT '',           --环境信息
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV56ZKV8DHK6AQDPY1B97T','VersionNumber','版本号','23.01',1,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV56ZKV8DHK6AQDPY1B97T');

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV56ZK7H2W407TSQY8VM03','VersionCode','当前版本','标准版',2,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV56ZK7H2W407TSQY8VM03');

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV56ZMTTET8PECQT9X2X8N','ValidTime','有效时间','2023-01-12',3,False,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV56ZMTTET8PECQT9X2X8N');

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV56ZMR71N1XAXT0QCNP02','OpenSourceAddress','开源地址','https://github.com/cavytina/HAMS',4,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV56ZMR71N1XAXT0QCNP02');

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV9FGJBMRJ81MQAE06EPAH','OpenSourceProtocol','开源协议','MIT',5,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV9FGJBMRJ81MQAE06EPAH');

INSERT INTO System_EnvironmentSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GPGV9FGJFVY0RYXVEFA9M32C','Email','邮箱','cavy1010@163.com',6,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EnvironmentSetting WHERE Code='01GPGV9FGJFVY0RYXVEFA9M32C');
