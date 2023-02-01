/*****************************************************
System_ServiceEventSetting       程序框架服务事件设置
******************************************************/

drop table if exists System_ServiceEventSetting;

CREATE TABLE System_ServiceEventSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --服务英文名称
    Name VARCHAR(100)          NOT NULL,             --服务中文名称
    Content VARCHAR(500)       DEFAULT '',           --服务代码
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GR1FCYQEK8KQYBKQ9VMJHK4V','EventInitializationService','事件初始化服务','1101',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GR1FCYQEK8KQYBKQ9VMJHK4V');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVFMVMZVFPN7CVDCNBDBYKK','ApplicationAlterationService','程序变更服务','2101',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVFMVMZVFPN7CVDCNBDBYKK');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVFMVMZRA9ZKT77XD0ET5X8','ApplictionVerificationService','程序验证服务','2102',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVFMVMZRA9ZKT77XD0ET5X8');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVFMVMZC7YC76YKK1FEYGS1','AccountVerificationService','用户验证服务','3101',3,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVFMVMZC7YC76YKK1FEYGS1');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVFMVMZSYP62JBQVQHYQ6DK','AccountAuthenticationService','用户授权服务','3102',4,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVFMVMZSYP62JBQVQHYQ6DK');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVG105PF9MQGQ981DK2T8WT','MenuInitializationService','菜单初始化服务','4101',5,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVG105PF9MQGQ981DK2T8WT');

INSERT INTO System_ServiceEventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GQVG105P7KHS7T5HCGPEX67K','MenuActivationService','菜单激活服务','4102',6,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_ServiceEventSetting WHERE Code='01GQVG105P7KHS7T5HCGPEX67K');