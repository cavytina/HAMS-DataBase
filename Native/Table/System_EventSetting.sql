/*****************************************************
System_ServiceEventSetting       程序框架事件设置
******************************************************/

drop table if exists System_EventSetting;

CREATE TABLE System_EventSetting 
(
    Code CHAR(24)              PRIMARY KEY,          --代码
    Item VARCHAR(100)          NOT NULL,             --事件英文名称
    Name VARCHAR(100)          NOT NULL,             --事件中文名称
    Content VARCHAR(500)       DEFAULT '',           --事件代码
    Description VARCHAR(500)   DEFAULT '',           --描述
    Note VARCHAR(500)          DEFAULT '',           --备注
    Rank TINYINT               NOT NULL,             --排序
    DefaultFlag BOOLEAN        NOT NULL,             --默认值标志
    EnabledFlag BOOLEAN        NOT NULL              --有效标志
);

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26GH30BP2MHJET69A3AF95','ApplicationEvent','程序事件','1101',1,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26GH30BP2MHJET69A3AF95');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26GH302ABPSP97F09HA2FR','PathEvent','路径事件','2101',2,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26GH302ABPSP97F09HA2FR');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26GH30XSTHA5NCWHEWA3TB','DataBaseEvent','数据库事件','3101',3,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26GH30XSTHA5NCWHEWA3TB');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26GH3079FG4Y9CE267TW5X','LogEvent','日志事件','4101',4,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26GH3079FG4Y9CE267TW5X');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26GH311WF34YV431F83PKB','ThemeEvent','主题事件','5101',5,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26GH311WF34YV431F83PKB');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26TKHFXB02H2PTMGZKDNWH','AccountEvent','用户事件','6101',6,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26TKHFXB02H2PTMGZKDNWH');

INSERT INTO System_EventSetting (Code,Item,Name,Content,Rank,DefaultFlag,EnabledFlag)
SELECT '01GY26TKHF7B39Q4MTM7N08HMH','ExtensionModuleEvent','扩展模块事件','7101',7,True,True
WHERE NOT EXISTS (SELECT 1 FROM System_EventSetting WHERE Code='01GY26TKHF7B39Q4MTM7N08HMH');
