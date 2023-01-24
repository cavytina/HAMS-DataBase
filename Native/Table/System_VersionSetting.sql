/*****************************************************
System_VersionSetting                程序框架版本设置
******************************************************/

drop table if exists System_VersionSetting;

CREATE TABLE System_VersionSetting 
(
    Code VARCHAR primary key,                 --代码
    Item VARCHAR NOT NULL,                    --英文名称
    Name VARCHAR NOT NULL,                    --中文名称
    Content VARCHAR DEFAULT '',               --设置值
    Description VARCHAR DEFAULT '',           --描述
    Note VARCHAR DEFAULT '',                  --备注
    Rank INT NOT NULL,                        --排序
    Flag BOOLEAN NOT NULL                     --是否启用
);

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV56ZKV8DHK6AQDPY1B97T','VersionNumber','版本号','23.01','',1,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV56ZKV8DHK6AQDPY1B97T');

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV56ZK7H2W407TSQY8VM03','VersionCode','当前版本','标准版','',2,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV56ZK7H2W407TSQY8VM03');

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV56ZMTTET8PECQT9X2X8N','ValidTime','有效时间','2023-01-12','',3,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV56ZMTTET8PECQT9X2X8N');

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV56ZMR71N1XAXT0QCNP02','OpenSourceAddress','开源地址','https://github.com/cavytina/HAMS','',4,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV56ZMR71N1XAXT0QCNP02');

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV9FGJBMRJ81MQAE06EPAH','OpenSourceProtocol','开源协议','MIT','',5,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV9FGJBMRJ81MQAE06EPAH');

INSERT INTO System_VersionSetting (Code,Item,Name,Content,Description,Rank,Flag)
SELECT '01GPGV9FGJFVY0RYXVEFA9M32C','Email','邮箱','cavy1010@163.com','',6,True
WHERE NOT EXISTS (SELECT 1 FROM System_VersionSetting WHERE Code='01GPGV9FGJFVY0RYXVEFA9M32C');

It's a pull request test!